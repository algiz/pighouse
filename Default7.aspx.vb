
Partial Class Default7
    Inherits System.Web.UI.Page

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Me.MultiView1.ActiveViewIndex = Menu1.Items.IndexOf(Menu1.SelectedItem)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("act") = 1 Then
            Me.MultiView1.ActiveViewIndex = 1
            Me.Menu1.Items(1).Selected = True
            Session.Clear()
        End If
        If Page.User.Identity.Name = "" Then
            Panel2.Visible = False
            Me.Button3.Visible = True
        Else
            Panel2.Visible = True
            Me.Button3.Visible = False
        End If
        If IsPostBack = False Then
            If IsNumeric(Request("com_id")) And Request("com_id") <> "" And Request("com_id").Length = 13 Then
                Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

                Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

                Dim dr As Data.SqlClient.SqlDataReader = Nothing

                Dim dr2 As Data.SqlClient.SqlDataReader = Nothing

                Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from commodity WHERE com_id=" & Request("com_id"), Conn)

                Dim hitnumber As Integer

                Try
                    Conn.Open()

                    dr = cmd.ExecuteReader()

                    dr.Read()

                    hitnumber = CType(dr.Item("click_percentage"), Integer)

                Catch ex As Exception   '---- 如果程式有錯誤或是例外狀況，將執行這一段  
                    Response.Write("<b>Error Message----  </b>" & ex.ToString())

                Finally


                    If CType(dr.Item("whether_shelf"), String) = 1 Then

                        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('此商品已經下架');location.href='Default.aspx'", True)

                    Else

                        Select Case CType(dr.Item("merchandise"), Integer)
                            Case 1
                                CType(Me.FormView1.FindControl("Button1"), Button).Visible = True
                                CType(Me.FormView1.FindControl("Button2"), Button).Visible = True
                            Case 2
                                CType(Me.FormView1.FindControl("Button1"), Button).Visible = True
                                CType(Me.FormView1.FindControl("Button2"), Button).Visible = False
                            Case 3
                                CType(Me.FormView1.FindControl("Button1"), Button).Visible = False
                                CType(Me.FormView1.FindControl("Button2"), Button).Visible = True
                        End Select


                        If Not (dr Is Nothing) Then
                            cmd.Cancel()
                            dr.Close()
                        End If

                        Dim cmd1 As New Data.SqlClient.SqlCommand("update commodity set click_percentage = " & (hitnumber + 1) & " where com_id = " & Request("com_id"), Conn)


                        cmd1.ExecuteNonQuery()
                        cmd1.Cancel()



                    End If





                    If (Conn.State = Data.ConnectionState.Open) Then
                        Conn.Close()
                        Conn.Dispose()
                    End If
                End Try
            Else
                Response.Write("<h2>Error...沒有此商品！</h2>")
                Response.End()
            End If
        End If

    End Sub

    Protected Sub FormView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.DataBound
        CType(Me.FormView1.FindControl("Image1"), Image).Attributes.Add("onload", "if (this.width>380) this.width=380;")
        Select Case CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text
            Case 1
                CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text = "貨到付款"
            Case 2
                CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text = "面交自取"
            Case 3
                CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text = "郵局或銀行轉帳"
            Case 4
                CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text = "郵局無摺存簿"
            Case 5
                CType(Me.FormView1.Row.Cells(0).FindControl("Label2"), Label).Text = "虛擬貨幣"
        End Select
        Select Case CType(Me.FormView1.Row.Cells(0).FindControl("Label3"), Label).Text
            Case 1
                CType(Me.FormView1.Row.Cells(0).FindControl("Label3"), Label).Text = "面交自取"
            Case 2
                CType(Me.FormView1.Row.Cells(0).FindControl("Label3"), Label).Text = "宅配"
            Case 3
                CType(Me.FormView1.Row.Cells(0).FindControl("Label3"), Label).Text = "郵寄"
            Case 4
                CType(Me.FormView1.Row.Cells(0).FindControl("Label3"), Label).Text = "貨運"
        End Select
        If CType(Me.FormView1.Row.Cells(0).FindControl("Label4"), Label).Text = 1 Or CType(Me.FormView1.Row.Cells(0).FindControl("Label4"), Label).Text = 3 Then
            CType(Me.FormView1.Row.Cells(0).FindControl("Label4"), Label).Text = "可"
        Else
            CType(Me.FormView1.Row.Cells(0).FindControl("Label4"), Label).Text = "否"
        End If



    End Sub

    Protected Sub ListView3_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView3.DataBound
        If Me.ListView3.Items.Count = 0 Then
            Me.Label13.Visible = True
        Else
            Me.Label13.Visible = False
        End If
        For i = 0 To Me.ListView3.Items.Count - 1
            Select Case CType(Me.ListView3.Items(i).FindControl("Label6"), Label).Text
                Case 1
                    CType(Me.ListView3.Items(i).FindControl("Label6"), Label).Text = "請求中"
                Case 2
                    CType(Me.ListView3.Items(i).FindControl("Label6"), Label).Text = "被拒絕"
                Case 3
                    CType(Me.ListView3.Items(i).FindControl("Label6"), Label).Text = "交換成功"
            End Select
        Next
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Page.User.Identity.Name = "" Then
            Response.Redirect("Login.aspx")
        Else
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
                '檢查是否加入過
                Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from track WHERE tra_m_id ='" & mid & "' AND tra_com_id = " & Request("com_id"), Conn)
                dr2 = cmd2.ExecuteReader()
                dr2.Read()
                If dr2.HasRows = False Then
                    cmd2.Cancel()
                    dr2.Close()
                    '加入table
                    Dim cmd1 As New Data.SqlClient.SqlCommand("insert into track (tra_m_id, tra_com_id) VALUES ('" & mid & "', '" & Request("com_id") & "')", Conn)
                    cmd1.ExecuteNonQuery()
                    cmd1.Cancel()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('加入成功')", True)
                Else
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你已經加入追蹤過')", True)
                End If
                
            End If

            If (Conn.State = Data.ConnectionState.Open) Then
                Conn.Close()
                Conn.Dispose()
            End If
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Page.User.Identity.Name = "" Then
            Response.Redirect("Login.aspx")
        Else
            Session("sUrl") = Request.Url.AbsoluteUri
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "window.open('default19.aspx','','height=315,width=350,status=no,toolbar=no,menubar=no,location=no','')", True)
        End If
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/default10.aspx?com_id=" & Request("com_id"))
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("menun") = 1
        Response.Redirect("~/default17.aspx?userid=" & CType(Me.FormView1.FindControl("Label12"), Label).Text)

    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("menun") = 2
        Response.Redirect("~/default17.aspx?userid=" & CType(Me.FormView1.FindControl("Label12"), Label).Text)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If User.Identity.Name = "" Then
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
                Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select * from commodity WHERE re_member_id ='" & mid & "' AND whether_shelf = 0", Conn)
                dr = cmd2.ExecuteReader
                dr.Read()
                If dr.HasRows = True Then
                    Response.Redirect("~/default18.aspx?com_id=" & Request("com_id"))
                Else
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你沒有上架中的商品!無法進行交換!!')", True)
                End If
            End If
            Conn.Close()
            Conn.Dispose()
        End If
        
    End Sub

    Protected Sub FormView2_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView2.ItemInserted
        Me.ListView2.DataBind()
    End Sub

    Protected Sub FormView2_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView2.ItemInserting
        If Page.User.Identity.Name = "" Then
            e.Cancel = True
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
                Me.SqlDataSource4.InsertParameters.Item("exchan_m_id").DefaultValue = mid
                Me.SqlDataSource4.InsertParameters.Item("exchan_com_id").DefaultValue = Request("com_id")

                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('發問成功!!')", True)
            End If
            Conn.Close()
            Conn.Dispose()

        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If Page.User.Identity.Name = "" Then
            Dim a As String = Request("com_id")
            Response.Redirect("Login.aspx?ReturnUrl=%2frent%2fDefault7.aspx?com_id=" & a)
        Else
            Me.Panel2.Visible = True
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If User.Identity.Name = "" Then
            Response.Redirect("login.aspx")
        Else
            Session("setp") = 1
            Response.Redirect("Default11.aspx?com_id=" & Request("com_id"))
        End If
    End Sub

    Protected Sub FormView3_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView3.DataBound
        CType(Me.FormView3.FindControl("Label11"), Label).Text = CType(Me.FormView3.FindControl("Label11"), Label).Text.Replace(System.Environment.NewLine, "<br>")
    End Sub

    Protected Sub ListView3_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView3.Load

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
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
                Dim cmd1 As New Data.SqlClient.SqlCommand("insert into message (title,mess_data,content,mess_m_id,re_mes_id) VALUES ('商品檢舉','" & DateTime.Today & "','商品網址為" & Request.Url.AbsoluteUri & "','1021', '" & mid & "')", Conn)
                cmd1.ExecuteNonQuery()
                cmd1.Cancel()
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('檢舉完成!!')", True)
                Conn.Close()
            End If

        End If
    End Sub
End Class
