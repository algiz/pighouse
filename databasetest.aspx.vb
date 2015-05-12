
Partial Class databasetest
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Private Function GetData() As Data.DataTable
        Dim ConnStr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Documents and Settings\user\桌面\DB_Rent(租圈資料庫)\DB_Rent.mdf;Integrated Security=True;User Instance=True"
        Dim Dt As New Data.DataTable
        Using Conn As New Data.SqlClient.SqlConnection(ConnStr)
            Dim SqlTxt As String = "SELECT click_percentage From commodity WHERE com_id=0010205000001"
            Dim Cmmd As New Data.SqlClient.SqlCommand(SqlTxt, Conn)
            Dim Da As New Data.SqlClient.SqlDataAdapter(Cmmd)
            Da.Fill(Dt)
        End Using
        Return Dt
    End Function
    Private Sub GVGetData()
        Dim Dt As Data.DataTable = GetData()
        Me.GridView1.DataSource = Dt
        Me.GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        GVGetData()
    End Sub

End Class
