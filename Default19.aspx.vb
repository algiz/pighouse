
Partial Class Default19
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim umid As String = Me.TextBox1.Text
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
            Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & umid & "'", Conn)
            dr2 = cmd2.ExecuteReader()
            dr2.Read()
            If dr2.HasRows = True Then
                Dim remid As Integer = CType(dr2.Item("id"), Integer)
                cmd2.Cancel()
                dr2.Close()
                '加入table
                Dim cmd1 As New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('你的好友推薦你一個商品','" & DateTime.Today & "','商品網址為" & Session("sUrl").ToString & "','" & remid & "', '" & mid & "')", Conn)
                cmd1.ExecuteNonQuery()
                cmd1.Cancel()
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('推薦成功')", True)

            Else
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你輸入的會員不存在')", True)
            End If

        End If

        If (Conn.State = Data.ConnectionState.Open) Then
            Conn.Close()
            Conn.Dispose()
        End If

    End Sub
End Class
