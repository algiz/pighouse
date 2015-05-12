
Partial Class NewFolder1_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Me.MultiView1.ActiveViewIndex = Me.Menu1.SelectedValue
    End Sub
    Public Shared Function GetRandomString(ByVal length As Integer) As String

        Dim r As New Random
        Dim code As String = ""

        For i As Integer = 0 To length - 1
            Select Case r.[Next](0, 3)
                Case 0
                    code += Convert.ToString(r.Next(0, 10))

                    Exit Select
                Case 1
                    code += CChar(ChrW(r.Next(65, 91)))

                    Exit Select
                Case 2
                    code += CChar(ChrW(r.Next(97, 122)))

                    Exit Select
            End Select

        Next

        Return code
    End Function
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim generator As New Random
        Dim randomValue As String = ""

        Dim nux As Integer
        nux = TextBox1.Text

        For j = 0 To nux

            For i = 0 To 11
                Select Case generator.Next(0, 3)
                    Case 0
                        randomValue += Convert.ToString(generator.Next(0, 10))
                        Exit Select
                    Case 1
                        randomValue += CChar(ChrW(generator.Next(65, 91)))
                        Exit Select
                    Case 2
                        randomValue += CChar(ChrW(generator.Next(97, 122)))
                        Exit Select
                End Select
            Next
            Me.Label1.Text = randomValue
            Me.SqlDataSource3.Insert()
            randomValue = ""
        Next
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from commodity WHERE whether_shelf=0 AND what_exchange IS NOT NULL AND what_exchange <> ''", Conn)
        Dim dr As Data.SqlClient.SqlDataReader = Nothing
        Conn.Open()
        Dim a(1000) As String
        Dim b(1000) As Integer
        dr = cmd.ExecuteReader()
        Dim i As Integer

        While (dr.Read)
            a(i) = CType(dr.Item("want"), String)
            b(i) = CType(dr.Item("re_member_id"), Integer)
            i += 1
        End While
        dr.Close()
        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
        Dim c(1000) As String
        For j = 0 To a.Length
            If a(j) = "" Then
                Exit For
            Else
                Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from commodity WHERE whether_shelf=0 AND com_id like '" & a(j) + "%" & "'", Conn)
                dr2 = cmd2.ExecuteReader
                Dim x As String = ""
                While (dr2.Read)
                    x += "http://114.33.224.36/rent/default7.aspx?com_id=" + CType(dr2.Item("com_id"), String) + "<br/>"
                End While
                dr2.Close()
                ' Response.Write(x & b(j))
                Dim cmd3 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("INSERT INTO message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('配對系統訊息','" & DateTime.Today & "','您好!!此為系統自動發出的配對訊息，我們替你找了您所希望交換的商品其商品網址為<br />" & x & "<br />祝您交易愉快!!','" & b(j) & "', '1021')", Conn)
                cmd3.ExecuteNonQuery()
            End If
        Next
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('傳送成功!!')", True)
        Conn.Close()
        Conn.Dispose()

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from member_data WHERE likes IS NOT NULL AND likes <> ''", Conn)
        Dim dr As Data.SqlClient.SqlDataReader = Nothing
        Conn.Open()
        Dim a(1000) As String
        Dim b(1000) As Integer
        dr = cmd.ExecuteReader()
        Dim i As Integer

        While (dr.Read)
            a(i) = CType(dr.Item("likes"), String)
            b(i) = CType(dr.Item("id"), Integer)
            i += 1
        End While
        dr.Close()
        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
        For j = 0 To a.Length

            If a(j) = "" Then
                Exit For
            Else
                Dim likearray() As String = Split(a(j), ",")
                Dim c(10) As String
                Dim dr3 As Data.SqlClient.SqlDataReader = Nothing
                For h = 0 To likearray.Length - 1
                    Dim cmd4 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from category WHERE ca_name = '" & likearray(h) & "'", Conn)
                    dr3 = cmd4.ExecuteReader()
                    dr3.Read()
                    If dr3.HasRows = True Then
                        c(h) = CType(dr3.Item("ca_id"), String)
                        dr3.Close()
                    Else
                        dr3.Close()
                    End If
                Next
                dr3.Close()
                For p = 0 To c.Length - 1
                    If c(p) = "" Then
                        Exit For
                    Else

                        Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select top 5 * from commodity WHERE whether_shelf=0 AND com_id like '" & c(p) + "%" & "'", Conn)
                        dr2 = cmd2.ExecuteReader
                        Dim x As String = ""
                        If dr2.HasRows = True Then
                            While (dr2.Read)
                                x += "http://114.33.224.36/rent/default7.aspx?com_id=" + CType(dr2.Item("com_id"), String) + "<br/>"
                            End While
                            dr2.Close()

                            Dim cmd3 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("INSERT INTO message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('配對系統訊息','" & DateTime.Today & "','您好!!此為系統自動發出的配對訊息，我們替你找了您所喜愛的商品其商品網址為<br />" & x & "<br />祝您交易愉快!!','" & b(j) & "', '1021')", Conn)
                            cmd3.ExecuteNonQuery()
                        Else
                            dr2.Close()
                        End If
                    End If
                Next
            End If
        Next
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('傳送成功!!')", True)
        Conn.Close()
        Conn.Dispose()
    End Sub

    Protected Sub GridView6_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView6.RowCommand
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        If e.CommandName = "check_p" Then
            If Me.GridView6.Rows(e.CommandArgument).Cells(5).Text = 0 Then
                Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("Update buypoint SET bp_ok = 1 WHERE bp_id = '" & Me.GridView6.Rows(e.CommandArgument).Cells(1).Text & "'", Conn)
                cmd.ExecuteNonQuery()
                Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("Select top 1 * from point_center WHERE (whether_use = 2 OR whether_use IS NULL) AND point = '" & Me.GridView6.Rows(e.CommandArgument).Cells(2).Text & "'", Conn)
                Dim dr As Data.SqlClient.SqlDataReader = Nothing
                dr = cmd2.ExecuteReader()
                dr.Read()
                If dr.HasRows = True Then
                    Dim pn As String = CType(dr.Item("no"), String)
                    dr.Close()
                    Dim cmd3 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('點數序號','" & DateTime.Today & "','您好!!<br />感謝您購買點數，序號為<br />" & pn & "祝您交易愉快!!','" & Me.GridView6.Rows(e.CommandArgument).Cells(3).Text & "', '1021')", Conn)
                    cmd3.ExecuteNonQuery()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('成功')", True)
                    GridView6.DataBind()
                Else
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('沒點數了')", True)
                    GridView6.DataBind()
                End If
            Else
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('以審核過')", True)
                GridView6.DataBind()
            End If
        End If
        Conn.Close()
    End Sub
End Class
