
Partial Class databasetest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        Dim sqlstr As String = "select * from commodity WHERE com_id=0010205000001"

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand(sqlstr, Conn)

        Dim dr As Data.SqlClient.SqlDataReader = cmd.ExecuteReader()

        Dim hitnumber As Integer
        While dr.Read()
            Response.Write("文章編號：" & dr.Item("com_id") & "<br>")
            Response.Write("日    期：" & dr.Item("com_name") & "<br>")
            Response.Write("文章標題：" & dr.Item("click_percentage"))
            Response.Write("<hr>")
            hitnumber = dr.Item("click_percentage") + 1
            Response.Write(hitnumber)
        End While
        cmd.Cancel()
        dr.Close()
        Conn.Close()
        Conn.Dispose()
    End Sub
End Class
