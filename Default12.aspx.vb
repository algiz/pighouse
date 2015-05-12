﻿
Partial Class Default12
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.Name = "" Then
            Response.Redirect("Login.aspx")
        Else
            Try
                If Session("setp").ToString <> 2 Then
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
                Else
                    If IsNumeric(Request("com_id")) And Request("com_id") <> "" Then
                        Dim umid As String = Request("com_id").ToString

                        Dim un As String = Page.User.Identity.Name

                        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

                        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

                        Dim dr As Data.SqlClient.SqlDataReader = Nothing

                        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing

                        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from member_data WHERE account ='" & un & "'", Conn)

                        Conn.Open()

                        dr = cmd.ExecuteReader()

                        dr.Read()

                        If dr.HasRows = True Then
                            '取得ID
                            Dim mid As Integer = CType(dr.Item("id"), Integer)
                            Dim ma As String = CType(dr.Item("account"), String)
                            Dim mn As String = CType(dr.Item("name"), String)
                            Dim mp As String = CType(dr.Item("phone"), String)
                            Dim mm As String = CType(dr.Item("mobile"), String)
                            Dim mmial As String = CType(dr.Item("e_mail"), String)
                            cmd.Cancel()
                            dr.Close()
                            '取得受信者id
                            Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select re_member_id from commodity WHERE com_id ='" & umid & "'", Conn)
                            dr2 = cmd2.ExecuteReader()
                            dr2.Read()
                            If dr2.HasRows = True Then
                                Dim remid As Integer = CType(dr2.Item("re_member_id"), Integer)
                                cmd2.Cancel()
                                dr2.Close()
                                Dim cmd3 As New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('租賃成功','" & DateTime.Today & "','商品資訊：<br />商品名稱：" & CType(Me.FormView2.FindControl("com_nameLabel"), Label).Text & "<br /> 物主帳號：" & CType(Me.FormView1.FindControl("accountLabel"), Label).Text & "<br /> 物主姓名：" & CType(Me.FormView1.FindControl("nameLabel"), Label).Text & "<br />Email：" & CType(Me.FormView1.FindControl("e_mailLabel"), Label).Text & "<br /> 電話：" & CType(Me.FormView1.FindControl("phoneLabel"), Label).Text & "<br />手機：" & CType(Me.FormView1.FindControl("mobileLabel"), Label).Text & "<br />請盡快與物主聯絡後續匯款事項!! ','" & mid & "', '" & remid & "')", Conn)
                                Dim cmd4 As New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('出租成功','" & DateTime.Today & "','商品資訊：<br />商品名稱：" & CType(Me.FormView2.FindControl("com_nameLabel"), Label).Text & "<br /> 承租方帳號：" & ma & "<br /> 承租方姓名：" & mn & "<br />Email：" & mmial & "<br /> 電話：" & mp & "<br />手機：" & mm & "<br />請盡快與物主聯絡後續匯款事項!! ','" & remid & "', '" & mid & "')", Conn)
                                cmd3.ExecuteNonQuery()
                                cmd4.ExecuteNonQuery()
                                Dim cmd5 As New Data.SqlClient.SqlCommand("UPDATE commodity SET whether_shelf = 1,decision = 1,progress = 1, member_id = '" & mid & "' WHERE com_id = '" & Request("com_id") & "'", Conn)
                                cmd5.ExecuteNonQuery()
                                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('承租完成!!，請去站內信箱收取信件')", True)
                            End If
                            Conn.Close()
                            Conn.Dispose()
                            Session.Clear()
                        End If
                    Else
                        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
                    End If
                End If
            Catch ex As Exception
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
            End Try

        End If

    End Sub

    Protected Sub Page_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
 
    End Sub
End Class
