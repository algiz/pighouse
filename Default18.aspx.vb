
Partial Class Default18
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.User.Identity.Name = "" Then
            Response.Redirect("Login.aspx")
        Else

            Dim un As String = Page.User.Identity.Name
            Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

            Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

            Dim dr As Data.SqlClient.SqlDataReader = Nothing

            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & un & "'", Conn)

            Conn.Open()

            dr = cmd.ExecuteReader()

            dr.Read()

            If dr.HasRows = True Then
                '取得ID
                Dim mid As Integer = CType(dr.Item("id"), Integer)
                cmd.Cancel()
                dr.Close()
                Me.SqlDataSource1.SelectCommand += " AND re_member_id ='" & mid & "'"
            End If
            Conn.Close()
            If Me.GridView1.Rows.Count = 0 Then
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你尚未上架任何商品');location.href='default6.aspx", True)
            End If
        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

    End Sub

    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("INSERT INTO exchan_request(exchan_state, exchan_time, exchan_com_id, re_ex_com_id) VALUES ('1', '" & DateTime.Today & "', '" & GridView1.DataKeys(e.NewSelectedIndex).Value & "', '" & Request("com_id") & "')", Conn)
        Conn.Open()
        cmd.ExecuteNonQuery()
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請求成功!!');location.href='default7.aspx?com_id=" & Request("com_id") & "'", True)
    End Sub
End Class
