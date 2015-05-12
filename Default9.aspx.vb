Partial Class Default9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.User.Identity.Name = "" Then
            Response.Redirect("~\Login.aspx")
        End If
    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Me.ListBox3.Items.Clear()
        Me.ListBox4.Items.Clear()
        Me.Label1.Text = ListBox1.SelectedItem.Text
    End Sub

    Protected Sub ListBox2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox2.SelectedIndexChanged
        Me.ListBox4.Items.Clear()
        Me.Label1.Text = ListBox1.SelectedItem.Text + " > " + ListBox2.SelectedItem.Text
    End Sub

    Protected Sub ListBox3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox3.TextChanged
        Me.Label1.Text = ListBox1.SelectedItem.Text + " > " + ListBox2.SelectedItem.Text + " > " + Me.ListBox3.SelectedItem.Text
    End Sub

    Protected Sub ListBox4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox4.SelectedIndexChanged
        Me.Label1.Text = ListBox1.SelectedItem.Text + " > " + ListBox2.SelectedItem.Text + " > " + Me.ListBox3.SelectedItem.Text + " > " + Me.ListBox4.SelectedItem.Text
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (Me.ListBox1.SelectedIndex = -1 Or Me.ListBox2.SelectedIndex = -1 Or Me.ListBox3.SelectedIndex = -1) Then
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請選擇分類')", True)
        Else
            Dim type3 As ListBox = Me.ListBox3
            Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

            Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

            Dim dr As Data.SqlClient.SqlDataReader = Nothing

            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select ca_id from category WHERE ca_id like '" & type3.SelectedItem.Value & "' + '__'", Conn)
            Conn.Open()

            dr = cmd.ExecuteReader()

            dr.Read()

            If dr.HasRows = True Then
                If Me.ListBox4.SelectedIndex = -1 Then
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請選擇分類')", True)
                End If
            End If
            cmd.Cancel()
            dr.Close()
            If Me.CheckBox1.Checked = False Then
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請勾選使用同意書')", True)
            Else
                If Me.ListBox4.SelectedIndex = -1 Then
                    Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select top 1 com_id from commodity where com_id like '" & Me.ListBox3.SelectedItem.Value & "' + '%' ORDER BY com_id desc", Conn)
                    dr = cmd2.ExecuteReader()
                    dr.Read()
                    If dr.HasRows = True Then
                        Dim comid As Integer
                        comid = CType(Right(CType(dr.Item("com_id"), String), 4), Integer) + 1
                        Session("categoryid") = Me.ListBox3.SelectedItem.Value + Format(comid, "000000")
                    Else
                        Session("categoryid") = Me.ListBox3.SelectedItem.Value + "000001"
                    End If
                    cmd2.Cancel()
                    dr.Close()
                Else
                    Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select top 1 com_id from commodity where com_id like '" & Me.ListBox4.SelectedItem.Value & "' + '%' ORDER BY com_id desc", Conn)
                    dr = cmd2.ExecuteReader()
                    dr.Read()
                    If dr.HasRows = True Then
                        Dim comid As Integer
                        comid = CType(Right(CType(dr.Item("com_id"), String), 4), Integer) + 1
                        Session("categoryid") = Me.ListBox4.SelectedItem.Value + Format(comid, "0000")
                    Else
                        Session("categoryid") = Me.ListBox4.SelectedItem.Value + "0001"
                    End If
                    cmd2.Cancel()
                    dr.Close()
                End If
                Label2.Text = Me.Label1.Text
                Me.MultiView1.ActiveViewIndex = 1
            End If
            Conn.Close()
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
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
            mid = CType(dr.Item("id"), Integer)
            cmd.Cancel()
            dr.Close()
            Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from pictemp WHERE pic_u_id ='" & mid & "'", Conn)
            Session("uid") = mid
            dr2 = cmd2.ExecuteReader()
            dr2.Read()
            If dr2.HasRows = False Then
                Try
                    If savefile(FileUpload1) = False Then
                        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你沒有指定檔案 或 你上傳的檔案非JPG或GIF圖形檔')", True)
                    Else
                        Me.FormView1.DataBind()
                    End If

                Catch ex As Exception
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('發生錯誤')", True)
                End Try
                cmd2.Cancel()
                dr2.Close()
            Else
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請先刪除之前上傳的相片然後再上傳')", True)
            End If
        End If
        Conn.Close()
    End Sub
    Dim mid As Integer
    Function savefile(ByVal uploading As FileUpload) As Boolean
        If uploading.HasFile = True Then
            Dim filename As String
            Dim pathfilename As String
            Dim extension As String = IO.Path.GetExtension(uploading.FileName)
            filename = Guid.NewGuid.ToString & IO.Path.GetExtension(uploading.FileName).ToLower
            If IO.Path.GetExtension(uploading.FileName).ToLower = ".jpg" Or IO.Path.GetExtension(uploading.FileName).ToLower = ".gif" Then
                pathfilename = Page.MapPath("~/ComPicData/") & filename
                uploading.SaveAs(pathfilename)

                Dim maxlength As Integer = 240
                Dim thumbwidth As Integer
                Dim thumbheight As Integer

                Dim pic As System.Drawing.Image
                pic = System.Drawing.Image.FromFile(pathfilename)
                If pic.Width > pic.Height Then
                    thumbwidth = maxlength
                    thumbheight = pic.Height / pic.Width * maxlength
                Else
                    thumbheight = maxlength
                    thumbwidth = pic.Width / pic.Height * maxlength
                End If

                Dim thumb As New Drawing.Bitmap(pic, thumbwidth, thumbheight)
                thumb.Save(Page.MapPath("~/Thumb/") & filename)

                Me.SqlDataSource5.InsertParameters("picpathname").DefaultValue = filename
                Me.SqlDataSource5.InsertParameters("pic_u_id").DefaultValue = mid
                Me.SqlDataSource5.Insert()
                Session("picpath") = filename
                Return True

            Else
                Return False
            End If
        Else
            Return False
        End If
    End Function
    Protected Sub FormView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewCommandEventArgs) Handles FormView1.ItemCommand

        If e.CommandName = "Delete" And e.CommandArgument <> "" Then
            Dim filename As String = e.CommandArgument
            Dim picfile As String = Page.MapPath("~/ComPicData/") & filename
            Dim thumbfile As String = Page.MapPath("~/Thumb/") & filename

            My.Computer.FileSystem.DeleteFile(picfile)
            My.Computer.FileSystem.DeleteFile(thumbfile)

        End If
    End Sub

    Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        
    End Sub

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If ListBox8.SelectedIndex = -1 Then
            Session("want") = ListBox7.SelectedValue
        Else
            Session("want") = ListBox8.SelectedValue
        End If
        Dim a1 As Integer = 0
        For i = 0 To CheckBoxList1.Items.Count - 1
            If Me.CheckBoxList1.Items(i).Selected = True Then
                a1 += CheckBoxList1.Items(i).Value
                Select Case a1
                    Case 1
                        Session("merchandise") = 2
                    Case 2
                        Session("merchandise") = 3
                    Case 3
                        Session("merchandise") = 1
                End Select
            End If
        Next

        Session("today") = DateTime.Now
        Session("endday") = DateTime.Now.AddDays(TextBox12.Text)
        Me.SqlDataSource6.Insert()

        '刪除暫存圖片
        Dim thumbfile As String = Page.MapPath("~/Thumb/") & Session("picpath").ToString
        My.Computer.FileSystem.DeleteFile(thumbfile)


        '刪除暫存資料庫
        Dim un As String = Page.User.Identity.Name
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("delete from pictemp WHERE pic_u_id ='" & Session("uid").ToString & "'", Conn)
        Conn.Open()
        Dim af As Integer = cmd.ExecuteNonQuery
        cmd.Cancel()
        Conn.Close()
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('上架成功!')", True)
        Response.Redirect("~/Default.aspx")
        Session.Clear()

        '以下為限制條件



    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

    Protected Sub CheckBoxList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBoxList1.SelectedIndexChanged
        If CheckBoxList1.Items(0).Selected = True Then
            TextBox9.Enabled = True
            TextBox13.Enabled = True
            TextBox15.Enabled = True
            RangeValidator2.Enabled = True
            RangeValidator3.Enabled = True
            RangeValidator4.Enabled = True
            RadioButtonList4.Enabled = True
            RequiredFieldValidator2.Enabled = True
            RequiredFieldValidator3.Enabled = True
            RequiredFieldValidator4.Enabled = True

        Else
            TextBox9.Enabled = False
            TextBox13.Enabled = False
            TextBox15.Enabled = False
            RangeValidator2.Enabled = False
            RangeValidator3.Enabled = False
            RangeValidator4.Enabled = False
            RadioButtonList4.Enabled = False
            RequiredFieldValidator2.Enabled = False
            RequiredFieldValidator3.Enabled = False
            RequiredFieldValidator4.Enabled = False

        End If
        If CheckBoxList1.Items(1).Selected = True Then
            TextBox3.Enabled = True

        Else
            TextBox3.Enabled = False

        End If
    End Sub

    Protected Sub ListBox5_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox5.SelectedIndexChanged
        Me.ListBox7.Items.Clear()
        Me.ListBox8.Items.Clear()
        Me.Label3.Text = ListBox5.SelectedItem.Text
    End Sub

    Protected Sub ListBox6_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox6.SelectedIndexChanged
        Me.ListBox8.Items.Clear()
        Me.Label3.Text = ListBox5.SelectedItem.Text + " > " + ListBox6.SelectedItem.Text
    End Sub

    Protected Sub ListBox7_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox7.SelectedIndexChanged
        Me.Label3.Text = ListBox5.SelectedItem.Text + " > " + ListBox6.SelectedItem.Text + " > " + Me.ListBox7.SelectedItem.Text
    End Sub

    Protected Sub ListBox8_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox8.SelectedIndexChanged
        Me.Label3.Text = ListBox5.SelectedItem.Text + " > " + ListBox6.SelectedItem.Text + " > " + Me.ListBox7.SelectedItem.Text + " > " + Me.ListBox8.SelectedItem.Text
    End Sub
End Class
