
Partial Class Default5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '若尚未登入返回登入畫面()
        If Page.User.Identity.Name = "" Then
            Response.Redirect("Default5.aspx")
        Else
            Try
                If Session("usercenter") = 1 Then
                    Me.MultiView1.ActiveViewIndex = 2
                    Session.Clear()
                Else
                    Me.MultiView1.ActiveViewIndex = 4
                End If
                If Session("plog") = 1 Then
                    Me.MultiView1.ActiveViewIndex = 3
                    Session.Clear()
                End If
            Catch ex As Exception
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('出現錯誤!!')", True)
            End Try

            Me.SqlDataSource2.UpdateCommand += " WHERE account = " + "'" + User.Identity.Name + "'"
            Me.SqlDataSource2.SelectCommand += " WHERE account = " + "'" + User.Identity.Name + "'"
            Me.SqlDataSource1.UpdateCommand += " WHERE account = " + "'" + User.Identity.Name + "'"
            Me.SqlDataSource1.SelectCommand += " WHERE account = " + "'" + User.Identity.Name + "'"
            Me.SqlDataSource3.SelectCommand += " AND account = " + "'" + User.Identity.Name + "'"
            If Page.IsPostBack = False Then


                Dim bda As TextBox = CType(Me.FormView1.FindControl("Textbox7"), TextBox)
                Dim bda1 As DropDownList = CType(Me.FormView1.FindControl("DropDownlist2"), DropDownList)
                Dim bda2 As DropDownList = CType(Me.FormView1.FindControl("DropDownlist3"), DropDownList)
                Dim birthdaylabel As Label = CType(Me.FormView1.FindControl("Label2"), Label)


                Dim a As Date
                a = CDate(birthdaylabel.Text)
                bda.Text = a.Year
                bda1.Items(a.Month - 1).Selected = True
                bda2.Items(a.Day - 1).Selected = True


                Dim ddl As TextBox = CType(Me.FormView1.FindControl("Textbox10"), TextBox)
                Dim ddl1 As DropDownList = CType(Me.FormView1.FindControl("DropDownList4"), DropDownList)
                Dim ddl2 As TextBox = CType(Me.FormView1.FindControl("Textbox11"), TextBox)
                Dim locationlabel As Label = CType(Me.FormView1.FindControl("Label1"), Label)


                ddl.Text = Left(locationlabel.Text, 3)


                For i = 0 To ddl1.Items.Count - 1
                    If ddl1.Items(i).Text = Mid(locationlabel.Text, 4, 3) Then
                        ddl1.Items(i).Selected = True
                    End If
                Next
                ddl2.Text = Mid(locationlabel.Text, 7)

                Dim likelabel As Label = CType(Me.FormView1.FindControl("Label3"), Label)
                Dim likearray() As String = Split(likelabel.Text, ",")

                For i = 0 To CType(Me.FormView1.FindControl("Checkboxlist1"), CheckBoxList).Items.Count - 1
                    For j = 0 To likearray.Length - 1
                        If CType(Me.FormView1.FindControl("Checkboxlist1"), CheckBoxList).Items(i).Text = likearray(j) Then
                            CType(Me.FormView1.FindControl("Checkboxlist1"), CheckBoxList).Items(i).Selected = True
                        End If
                    Next
                    birthdaylabel.Text = ""
                    locationlabel.Text = ""
                    likelabel.Text = ""
                Next

            End If
        End If
        Session.Clear()
    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
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

    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('修改成功!!')", True)
        Me.MultiView1.ActiveViewIndex = 4
    End Sub

    Protected Sub FormView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub UpdateButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        

    End Sub

    Protected Sub FormView2_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView2.ItemUpdating
        Dim passlable As Label = CType(Me.FormView2.FindControl("Label4"), Label)
        If CType(Me.FormView2.FindControl("Textbox4"), TextBox).Text <> passlable.Text Then
            e.Cancel = True
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('舊密碼有誤，請重新輸入')", True)
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Me.MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Me.MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        Me.MultiView1.ActiveViewIndex = 4
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand("Select * From point_center WHERE no = '" & Me.TextBox14.Text & "'", Conn)

        Dim dr As Data.SqlClient.SqlDataReader = Nothing

        dr = cmd.ExecuteReader
        dr.Read()

        If dr.HasRows = True Then

            If CType(dr.Item("whether_use"), Integer) = 1 Then
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('序號已被使用過')", True)
            Else
                Dim point As Integer = CType(dr.Item("point"), Integer)
                dr.Close()
                Dim cmd2 As New Data.SqlClient.SqlCommand("Select * from member_data WHERE account = '" & Page.User.Identity.Name & "'", Conn)
                Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
                dr2 = cmd2.ExecuteReader
                dr2.Read()
                Dim usid As Integer = CType(dr2.Item("id"), Integer)
                Dim uspo As Integer
                If IsDBNull(dr2.Item("m_point")) = True Then
                    uspo = 0
                Else
                    uspo = CType(dr2.Item("m_point"), Integer)
                End If
                dr2.Close()
                uspo += point
                Dim cmd3 As New Data.SqlClient.SqlCommand("UPDATE member_data SET m_point = '" & uspo & "' WHERE id = '" & usid & "'", Conn)
                cmd3.ExecuteNonQuery()
                Dim cmd4 As New Data.SqlClient.SqlCommand("UPDATE point_center SET whether_use = '1', use_time = '" & DateTime.Today & "', po_m_id = '" & usid & "' WHERE no = '" & Me.TextBox14.Text & "'", Conn)
                cmd4.ExecuteNonQuery()
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('儲值成功!!')", True)
            End If

        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('序號有誤，請重新輸入!!')", True)
        End If
        Conn.Close()
        Conn.Dispose()
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        Me.MultiView1.ActiveViewIndex = 3
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        Me.MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        Session("Sclick") = "click_yes2"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        Session("Sclick") = "click_yes"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub View4_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles View4.Load
        If Me.GridView1.Rows.Count = 0 Then
            Me.Label5.Text = "無資料!!"
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Default14.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("Default9.aspx")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("Default14.aspx")
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Me.MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub ImageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('準備中..尚未開放!')", True)
    End Sub

    Protected Sub ImageButton6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('準備中..尚未開放!')", True)
    End Sub

    Protected Sub ImageButton7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click
        Response.Redirect("Default8.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Response.Redirect("Default8.aspx")
    End Sub
End Class
