
Partial Class Default20
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("insert into c (c) values ('" & Request("c") & "')", Conn)
        cmd.ExecuteNonQuery()
        cmd.Cancel()
        Conn.Close()
    End Sub
End Class
