
Partial Class Default15
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
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
            Session("u_id") = CType(dr.Item("id"), Integer)
            cmd.Cancel()
            dr.Close()
            Me.SqlDataSource1.Insert()
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('購買成功!!請盡快進行匯款，確認之後將為您發送序號')", True)
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("default5-1.aspx")
    End Sub
End Class
