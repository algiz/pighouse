
Partial Class Default10
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim umid As String = Request("com_id").ToString

        Dim un As String = Page.User.Identity.Name

        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim dr As Data.SqlClient.SqlDataReader = Nothing

        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & un & "'", Conn)

        Conn.Open()

        dr = cmd.ExecuteReader()

        dr.Read()

        If dr.HasRows = True Then
            '取得ID
            Dim mid As Integer = CType(dr.Item("id"), Integer)
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
                '加入table
                Dim cmd1 As New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('" & Me.TextBox3.Text & "','" & DateTime.Today & "','" & Me.TextBox4.Text & "','" & remid & "', '" & mid & "')", Conn)
                cmd1.ExecuteNonQuery()
                cmd1.Cancel()
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('傳送成功!!');location.href='default7.aspx?com_id=" & Request("com_id") & "'", True)
            Else
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('出現錯誤!!請由正當路徑進入')", True)
                ' Response.Redirect("~/default.aspx")
            End If

        End If

        If (Conn.State = Data.ConnectionState.Open) Then
            Conn.Close()
            Conn.Dispose()
        End If
        ' Response.Redirect("~/default7.aspx?com_id=" & Request("com_id"))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.User.Identity.Name = "" Then
            Response.Redirect("Login.aspx")
        End If
        If Request("com_id") = "" Then
            Response.Redirect("default6.aspx")
        End If
    End Sub
End Class
