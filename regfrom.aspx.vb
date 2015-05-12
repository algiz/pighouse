
Partial Class regfrom

    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ddl As TextBox = CType(Me.FormView1.FindControl("Textbox10"), TextBox)
        Dim ddl1 As DropDownList = CType(Me.FormView1.FindControl("DropDownList4"), DropDownList)
        Dim ddl2 As TextBox = CType(Me.FormView1.FindControl("Textbox11"), TextBox)
        Dim locationlabel As Label = CType(Me.FormView1.FindControl("Label1"), Label)
        locationlabel.Text = ddl.Text + ddl1.Text + ddl2.Text

        Dim bda As TextBox = CType(Me.FormView1.FindControl("Textbox7"), TextBox)
        Dim bda1 As DropDownList = CType(Me.FormView1.FindControl("DropDownlist2"), DropDownList)
        Dim bda2 As DropDownList = CType(Me.FormView1.FindControl("DropDownlist3"), DropDownList)
        Dim birthdaylabel As Label = CType(Me.FormView1.FindControl("Label2"), Label)
        birthdaylabel.Text = bda.Text + "/" + bda1.Text + "/" + bda2.Text

        Dim lik As CheckBoxList = CType(Me.FormView1.FindControl("Checkboxlist1"), CheckBoxList)
        Dim likelabel As Label = CType(Me.FormView1.FindControl("Label3"), Label)
        For i = 0 To lik.Items.Count - 1
            If lik.Items(i).Selected = True Then
                likelabel.Text += lik.Items(i).Text + ","
            End If
        Next

    End Sub

    Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('註冊成功')", True)
        Response.Redirect("~/Default.aspx")
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim acc As TextBox = CType(Me.FormView1.FindControl("Textbox2"), TextBox)
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim dr As Data.SqlClient.SqlDataReader = Nothing

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select account from member_data WHERE account='" & acc.Text & "'", Conn)
        Conn.Open()

        dr = cmd.ExecuteReader()

        dr.Read()

        If dr.HasRows = True Then
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('此帳號已有人使用過')", True)
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('帳號可以使用')", True)
            CType(Me.FormView1.FindControl("Textbox2"), TextBox).Enabled = False
            Session("check1") = True
        End If
        cmd.Cancel()
        dr.Close()

    End Sub


    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim mail As TextBox = CType(Me.FormView1.FindControl("Textbox9"), TextBox)
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim dr As Data.SqlClient.SqlDataReader = Nothing

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select e_mail from member_data WHERE e_mail='" & mail.Text & "'", Conn)
        Conn.Open()

        dr = cmd.ExecuteReader()

        dr.Read()

        If dr.HasRows = True Then
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('此E-mail已有人使用過')", True)
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('此E-mail可以使用')", True)
            CType(Me.FormView1.FindControl("Textbox9"), TextBox).Enabled = False
            Session("check2") = True
        End If
        cmd.Cancel()
        dr.Close()
    End Sub

    Protected Sub FormView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting

        Dim ID As TextBox = CType(Me.FormView1.FindControl("Textbox8"), TextBox)
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim dr As Data.SqlClient.SqlDataReader = Nothing

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id_number from member_data WHERE id_number='" & ID.Text & "'", Conn)
        Conn.Open()

        dr = cmd.ExecuteReader()

        dr.Read()

        If dr.HasRows = True Then
            e.Cancel = True
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('身分證已被使用過')", True)
            cmd.Cancel()
            dr.Close()
        ElseIf Session("check1") = True And Session("check2") = True Then
        Else
            e.Cancel = True
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請點選檢查帳號及E-MAIL按鈕')", True)
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("default.aspx")
    End Sub
End Class
