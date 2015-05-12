
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Try
            '呼叫檢查帳號密碼程式，成功會傳回True
            If ChkLogin(Login1.UserName, Login1.Password) = True Then
                '執行FormsAuthentication.RedirectFromLoginPage，並且將是否記住帳號一併處理   
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet)
            Else
                Throw (New Exception("登入失敗"))
            End If
        Catch ex As Exception
            'lblErrMsg.Text = ex.Message
        End Try
    End Sub
    Public Function ChkLogin(ByVal UserName As String, ByVal UserPassword As String) As Boolean
        Dim conn As New Data.SqlClient.SqlConnection   '宣告SqlConnection並實體化   
        Dim cmmd As New Data.SqlClient.SqlCommand      '宣告SqlCommand並實體化   

        Dim pmtUserName As New Data.SqlClient.SqlParameter     '宣告sqlParameter並實體化   
        Dim pmtUserPassword As New Data.SqlClient.SqlParameter '宣告sqlParameter並實體化   


        Dim strSQL As String
        Dim dr As Data.SqlClient.SqlDataReader

        Try
            '設定Connection String並且開啟Connection   
            conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\DB_Rent.mdf;Integrated Security=True;User Instance=True"
            'conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("Database").ConnectionString
            conn.Open()

            '設定讀取資料的SQL語法   
            strSQL = "SELECT * FROM member_data WHERE account = @UserName And password = @Passwd"
            cmmd.Connection = conn
            cmmd.CommandText = strSQL

            '設定Parameter名稱，並將值傳入   
            pmtUserName.ParameterName = "@UserName"
            pmtUserName.Value = UserName
            pmtUserPassword.ParameterName = "@Passwd"
            pmtUserPassword.Value = UserPassword

            '將Parameter加入SqlCommand中   
            cmmd.Parameters.Add(pmtUserName)
            cmmd.Parameters.Add(pmtUserPassword)

            '執行讀取並將結果給予DataReader   
            dr = cmmd.ExecuteReader()
            dr.Read()
            If dr.HasRows Then
                If IsDBNull(dr.Item("whether_stop")) = True Then
                    ChkLogin = True
                Else
                    ChkLogin = False
                End If
            Else
                '發起錯誤   
                Throw New Exception("登入失敗!!")
            End If

        Catch ex As Exception
            ChkLogin = False
            ' ex.Message
        Finally

            pmtUserName = Nothing
            pmtUserPassword = Nothing

            dr = Nothing
            cmmd = Nothing
            conn = Nothing
        End Try
    End Function

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/regfrom.aspx")
    End Sub
End Class
