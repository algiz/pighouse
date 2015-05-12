
Partial Class Default14
    Inherits System.Web.UI.Page

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        MultiView1.ActiveViewIndex = Menu1.SelectedValue
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.Name = "" Then
            Response.Redirect("~/login.aspx?ReturnUrl=%2frent%2fDefault14.aspx")
        Else
            Me.SqlDataSource7.SelectCommand += " WHERE account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource2.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource3.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource4.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource8.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource9.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource5.SelectCommand += " AND M.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource10.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource1.SelectCommand += " AND B.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource6.SelectCommand += " AND account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource11.SelectCommand += " AND W.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource14.SelectCommand += " AND W.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource15.SelectCommand += " AND M.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource16.SelectCommand += " AND W.account=" + "'" + User.Identity.Name + "'"
            Me.SqlDataSource17.SelectCommand += " AND U.account=" + "'" + User.Identity.Name + "'"
        End If
        Try
            If Session("plog") = 2 Then
                Me.MultiView1.ActiveViewIndex = 10
                Session.Clear()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub GridView6_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView6.DataBound
        For i = 0 To Me.GridView6.Rows.Count - 1
            Select Case Me.GridView6.Rows(i).Cells(2).Text
                Case 0
                    Me.GridView6.Rows(i).Cells(2).Text = "上架中"
                Case 1
                    Me.GridView6.Rows(i).Cells(2).Text = "租賃"
                Case 2
                    Me.GridView6.Rows(i).Cells(2).Text = "交換"
            End Select
            Select Case Me.GridView6.Rows(i).Cells(3).Text
                Case 0
                    Me.GridView6.Rows(i).Cells(3).Text = "上架中"
                Case 1
                    Me.GridView6.Rows(i).Cells(3).Text = "下標付款"
                Case 2
                    Me.GridView6.Rows(i).Cells(3).Text = "已出貨"
                Case 3
                    Me.GridView6.Rows(i).Cells(3).Text = "出租(換)方已簽核"
                Case 4
                    Me.GridView6.Rows(i).Cells(3).Text = "在途中"
                Case 5
                    Me.GridView6.Rows(i).Cells(3).Text = "已收到"
                Case 6
                    Me.GridView6.Rows(i).Cells(3).Text = "承租(換)方已簽核"
                Case 7
                    Me.GridView6.Rows(i).Cells(3).Text = "租期中"
                Case 8
                    Me.GridView6.Rows(i).Cells(3).Text = "商品退還中"
                Case 9
                    Me.GridView6.Rows(i).Cells(3).Text = "交易完成"
                Case 10
                    Me.GridView6.Rows(i).Cells(3).Text = "出租(換)方未簽核"
                Case 10
                    Me.GridView6.Rows(i).Cells(3).Text = "承租(換)方未簽核"
                Case 12
                    Me.GridView6.Rows(i).Cells(3).Text = "交易取消"
                Case 13
                    Me.GridView6.Rows(i).Cells(3).Text = "交換完成"
                Case 14
                    Me.GridView6.Rows(i).Cells(3).Text = "與物流確認中"
            End Select


        Next
    End Sub

    Protected Sub GridView2_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.DataBound
        For i = 0 To Me.GridView2.Rows.Count - 1
            Select Case Me.GridView2.Rows(i).Cells(5).Text
                Case 1
                    Me.GridView2.Rows(i).Cells(5).Text = "可租可換"
                Case 2
                    Me.GridView2.Rows(i).Cells(5).Text = "可租不可換"
                Case 3
                    Me.GridView2.Rows(i).Cells(5).Text = "不可租可換"
            End Select
            Select Case Me.GridView2.Rows(i).Cells(6).Text
                Case 1
                    Me.GridView2.Rows(i).Cells(6).Text = "貨到付款"
                Case 2
                    Me.GridView2.Rows(i).Cells(6).Text = "面交自取"
                Case 3
                    Me.GridView2.Rows(i).Cells(6).Text = "郵局或銀行轉帳"
                Case 4
                    Me.GridView2.Rows(i).Cells(6).Text = "郵局無摺存簿"
                Case 5
                    Me.GridView2.Rows(i).Cells(6).Text = "虛擬貨幣"



            End Select
        Next

    End Sub

    Protected Sub GridView3_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView3.DataBound
        For i = 0 To Me.GridView3.Rows.Count - 1
            Select Case Me.GridView3.Rows(i).Cells(3).Text
                Case 1
                    Me.GridView3.Rows(i).Cells(3).Text = "下標付款"

                Case 2
                    Me.GridView3.Rows(i).Cells(3).Text = "已出貨"

                Case 3
                    Me.GridView3.Rows(i).Cells(3).Text = "出租(換)方已簽核"
                Case 4
                    Me.GridView3.Rows(i).Cells(3).Text = "在途中"
                Case 5
                    Me.GridView3.Rows(i).Cells(3).Text = "已收到"
                Case 6
                    Me.GridView3.Rows(i).Cells(3).Text = "承租(換)方已簽核"
                Case 7
                    Me.GridView3.Rows(i).Cells(3).Text = "租期中"

                Case 8
                    Me.GridView3.Rows(i).Cells(3).Text = "商品退還中"

                Case 9
                    Me.GridView3.Rows(i).Cells(3).Text = "交易完成"

                Case 10
                    Me.GridView3.Rows(i).Cells(3).Text = "出租(換)方未簽核"
                Case 10
                    Me.GridView3.Rows(i).Cells(3).Text = "承租(換)方未簽核"
                Case 12
                    Me.GridView3.Rows(i).Cells(3).Text = "交易取消"
                Case 13
                    Me.GridView3.Rows(i).Cells(3).Text = "交易中止"
                Case 14
                    Me.GridView3.Rows(i).Cells(3).Text = "與物流確認中"
            End Select

            Select Case Me.GridView3.Rows(i).Cells(4).Text
                Case 1
                    Me.GridView3.Rows(i).Cells(4).Text = "面交自取"
                Case 2
                    Me.GridView3.Rows(i).Cells(4).Text = "宅配"
                Case 3
                    Me.GridView3.Rows(i).Cells(4).Text = "郵寄"
                Case 4
                    Me.GridView3.Rows(i).Cells(4).Text = "貨運"

            End Select
            Select Case Me.GridView3.Rows(i).Cells(6).Text
                Case 1
                    Me.GridView3.Rows(i).Cells(6).Text = "全新品"
                Case 2
                    Me.GridView3.Rows(i).Cells(6).Text = "二手"
            End Select
        Next
    End Sub

    Protected Sub GridView4_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView4.DataBound
        For i = 0 To Me.GridView4.Rows.Count - 1
            Select Case Me.GridView4.Rows(i).Cells(6).Text
                Case 1
                    Me.GridView4.Rows(i).Cells(6).Text = "下標付款"
                Case 2
                    Me.GridView4.Rows(i).Cells(6).Text = "已出貨"
                Case 3
                    Me.GridView4.Rows(i).Cells(6).Text = "出租(換)方已簽核"
                Case 4
                    Me.GridView4.Rows(i).Cells(6).Text = "在途中"
                Case 5
                    Me.GridView4.Rows(i).Cells(6).Text = "已收到"
                Case 6
                    Me.GridView4.Rows(i).Cells(6).Text = "承租(換)方已簽核"
                Case 7
                    Me.GridView4.Rows(i).Cells(6).Text = "租期中"

                Case 8
                    Me.GridView4.Rows(i).Cells(6).Text = "商品退還中"

                Case 9
                    Me.GridView4.Rows(i).Cells(6).Text = "交易完成"

                Case 10
                    Me.GridView4.Rows(i).Cells(6).Text = "出租(換)方未簽核"
                Case 10
                    Me.GridView4.Rows(i).Cells(6).Text = "承租(換)方未簽核"
                Case 12
                    Me.GridView4.Rows(i).Cells(6).Text = "交易取消"
                Case 13
                    Me.GridView4.Rows(i).Cells(6).Text = "交易中止"
                Case 14
                    Me.GridView4.Rows(i).Cells(6).Text = "與物流確認中"
            End Select


            If Me.GridView4.Rows(i).Cells(3).Text = "&nbsp;" Then
                Me.GridView4.Rows(i).Cells(3).Text = "租期尚未開始"
            Else
                Dim s As DateTime = CType(Me.GridView4.Rows(i).Cells(3).Text, DateTime)
                Me.GridView4.Rows(i).Cells(3).Text = s.AddDays(Me.GridView4.Rows(i).Cells(4).Text)
            End If

        Next

    End Sub

    Protected Sub GridView5_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView5.RowCommand

        If e.CommandName = "ac" Then
            Dim key As String = Me.GridView5.Rows(e.CommandArgument).Cells(0).Text

            Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

            Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE exchan_request SET exchan_state = 3 WHERE exchan_id = '" & key & "'", Conn)

            Conn.Open()

            cmd.ExecuteNonQuery()

            Dim uid As String = Page.User.Identity.Name

            Dim ucmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & uid & "'", Conn)

            Dim dr As Data.SqlClient.SqlDataReader = Nothing

            dr = ucmd.ExecuteReader

            dr.Read()

            If dr.HasRows = True Then
                Dim userid As Integer = CType(dr.Item("id"), Integer)
                cmd.Cancel()
                dr.Close()
                Dim chuid As String = Me.GridView5.Rows(e.CommandArgument).Cells(1).Text

                Dim chcmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & chuid & "'", Conn)

                Dim dr2 As Data.SqlClient.SqlDataReader = Nothing

                dr2 = chcmd.ExecuteReader

                dr2.Read()

                Dim chuserid As Integer = CType(dr2.Item("id"), Integer)
                chcmd.Cancel()
                dr2.Close()

                Dim cmd2 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("Insert into message(title,mess_data,content,mess_m_id,re_mes_id) VALUES ('交換請求成功','" & DateTime.Today & "','恭喜交換成功!!以下為物主聯絡方式:<br />姓名:" & CType(Me.FormView1.FindControl("Label6"), Label).Text & "<br /> E-mail:" & CType(Me.FormView1.FindControl("Label3"), Label).Text & "<br /> 手機:" & CType(Me.FormView1.FindControl("Label5"), Label).Text & "<br /> 請盡快與物主洽談後續交換事項。','" & chuserid & "', '" & userid & "')", Conn)

                cmd2.ExecuteNonQuery()

                cmd2.Cancel()
                Dim cmd10 As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("SELECT WC.com_id, MC.com_id AS Expr1 FROM [exchan_request], commodity WC, commodity MC, member_data W, member_data M WHERE W.id =  WC.re_member_id AND M.id = MC.re_member_id AND WC.com_id =  exchan_request.exchan_com_id AND MC.com_id = exchan_request.re_ex_com_id AND exchan_state = 3 AND exchan_id = '" & Me.GridView5.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
                Dim udr As Data.SqlClient.SqlDataReader = Nothing
                udr = cmd10.ExecuteReader

                udr.Read()

                If udr.HasRows = True Then
                    Dim citemid As String = CType(udr.Item("com_id"), String)
                    Dim citemid2 As String = CType(udr.Item("Expr1"), String)
                    udr.Close()
                    cmd10.Cancel()
                    Dim cmdupc As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE commodity SET whether_shelf = 1,decision = 2,progress = 13 WHERE com_id = '" & citemid & "' OR com_id = '" & citemid2 & "'", Conn)
                    Dim cmdme As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE commodity SET member_id = '" & chuserid & "' WHERE com_id = '" & citemid2 & "'", Conn)
                    cmdupc.ExecuteNonQuery()
                    cmdme.ExecuteNonQuery()
                    cmdupc.Cancel()
                    cmdme.Cancel()
                End If
            End If


            Conn.Close()

            GridView5.DataBind()


        End If

        If e.CommandName = "noac" Then
            Dim key As String = Me.GridView5.Rows(e.CommandArgument).Cells(0).Text

            Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

            Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE exchan_request SET exchan_state = 2 WHERE exchan_id = '" & key & "'", Conn)

            Conn.Open()

            cmd.ExecuteNonQuery()

            Conn.Close()

            GridView5.DataBind()
        End If


    End Sub

    Protected Sub GridView5_RowCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView5.RowCreated
        If e.Row.RowType = DataControlRowType.Header Then
            e.Row.Cells.RemoveAt(6)
            e.Row.Cells(6).Text = "是否同意"
            e.Row.Cells(6).ColumnSpan = 2
        End If
    End Sub

    Protected Sub GridView5_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView5.RowDataBound
        For i = 0 To Me.GridView5.Rows.Count - 1
            Select Case Me.GridView5.Rows(i).Cells(4).Text
                Case 1
                    Me.GridView5.Rows(i).Cells(4).Text = "請求中"
                Case 2
                    Me.GridView5.Rows(i).Cells(4).Text = "拒絕"
                Case 3
                    Me.GridView5.Rows(i).Cells(4).Text = "同意交換"
            End Select
        Next
    End Sub

    Protected Sub GridView7_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView7.DataBound
        For i = 0 To Me.GridView7.Rows.Count - 1
            Select Case Me.GridView7.Rows(i).Cells(4).Text
                Case 0
                    Me.GridView7.Rows(i).Cells(4).Text = "未讀"
                Case 1
                    Me.GridView7.Rows(i).Cells(4).Text = "已讀"
                Case "&nbsp;"
                    Me.GridView7.Rows(i).Cells(4).Text = "未讀"
            End Select
        Next
    End Sub

    Protected Sub GridView7_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView7.Load
        GridView7.DataBind()
    End Sub

    Protected Sub GridView7_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView7.SelectedIndexChanging
        Session("pn") = e.NewSelectedIndex
        MultiView1.ActiveViewIndex = 8
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        MultiView1.ActiveViewIndex = 7
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Me.TextBox1.Text = CType(Me.FormView2.FindControl("accountLabel0"), Label).Text
        Me.TextBox2.Text = "Re：" & CType(Me.FormView2.FindControl("titleLabel"), Label).Text
        Me.TextBox3.Text = "※ 引述" & CType(Me.FormView2.FindControl("accountLabel0"), Label).Text & "之銘言:" + System.Environment.NewLine + ">" & CType(Me.FormView2.FindControl("contentLabel"), Label).Text.Replace("<br />", System.Environment.NewLine) + System.Environment.NewLine
        MultiView1.ActiveViewIndex = 9
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString

        Dim chuid As String = Me.TextBox1.Text

        Dim chcmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & chuid & "'", Conn)

        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
        Conn.Open()

        dr2 = chcmd.ExecuteReader

        dr2.Read()

        If dr2.HasRows = True Then
            Dim m_mid As Integer = CType(dr2.Item("id"), Integer)
            dr2.Close()
            chcmd.Cancel()
            Dim uid As String = Page.User.Identity.Name

            Dim ucmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("select id from member_data WHERE account ='" & uid & "'", Conn)

            Dim dr As Data.SqlClient.SqlDataReader = Nothing
            dr = ucmd.ExecuteReader
            dr.Read()
            Dim userid As Integer = CType(dr.Item("id"), Integer)
            dr.Close()
            ucmd.Cancel()
            Me.SqlDataSource13.InsertParameters.Item("mess_m_id").DefaultValue = m_mid
            Me.SqlDataSource13.InsertParameters.Item("mess_data").DefaultValue = DateTime.Today
            Me.SqlDataSource13.InsertParameters.Item("re_mes_id").DefaultValue = userid
            Me.SqlDataSource13.Insert()
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('傳送成功!!')", True)
            MultiView1.ActiveViewIndex = 7
        End If
        Conn.Close()

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Try
            Session("pn") += 1
            Me.SqlDataSource12.SelectCommand = "SELECT * FROM [message], member_data M, member_data W WHERE message.re_mes_id = M.id AND mess_m_id = W.id AND ([mess_id] ='" & Me.GridView7.Rows(Session("pn").ToString).Cells(0).Text & "')"
            Me.FormView2.DataBind()
        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('已是最後一封')", True)
            Session("pn") -= 1
        End Try
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Try
            Session("pn") -= 1
            Me.SqlDataSource12.SelectCommand = "SELECT * FROM [message], member_data M, member_data W WHERE message.re_mes_id = M.id AND mess_m_id = W.id AND ([mess_id] ='" & Me.GridView7.Rows(Session("pn").ToString).Cells(0).Text & "')"
            Me.FormView2.DataBind()
        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('已經是第一封了')", True)
            Session("pn") += 1
        End Try

    End Sub
    Protected Sub FormView2_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView2.DataBound
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection

        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        If Me.GridView7.SelectedIndex <> -1 Then


            Dim sev As Integer = Me.GridView7.Rows(Me.GridView7.SelectedIndex).Cells(0).Text

            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE message SET isload = 1 WHERE mess_id = '" & sev & "'", Conn)


            cmd.ExecuteNonQuery()
            cmd.Cancel()
        End If

        If DataList9.SelectedIndex <> -1 Then
            Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("UPDATE message SET isload = 1 WHERE mess_id = '" & Me.DataList9.SelectedValue & "'", Conn)
            cmd.ExecuteNonQuery()
            cmd.Cancel()
        End If
        Conn.Close()
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Me.MultiView1.ActiveViewIndex = 7
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        TextBox3.Text = ""
    End Sub

    Protected Sub DataList9_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList9.SelectedIndexChanged
        Me.MultiView1.ActiveViewIndex = 8
        Me.SqlDataSource12.SelectParameters.Item("mess_id").DefaultValue = Me.DataList9.SelectedValue
    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged
        Response.Redirect("Default7.aspx?com_id=" & Me.DataList1.SelectedValue)
    End Sub

    Protected Sub DataList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList2.SelectedIndexChanged
        'Response.Redirect("Default7.aspx?com_id=" & Me.DataList2.SelectedValue)
    End Sub

    Protected Sub DataList3_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList3.ItemDataBound

        '以下未完成(租期剩餘時間)

        'Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        'Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        'Conn.Open()
        'Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand("Select * From commodity WHERE com_id='" & Me.DataList3.SelectedValue & "'")
        'Dim dr As Data.SqlClient.SqlDataReader = Nothing
        'dr = cmd.ExecuteReader
        'dr.Read()
        '-->寫到這  CType (dr.Item ("
        'CType(Me.DataList3.FindControl("Label8"), Label).Text
    End Sub

    Protected Sub GridView8_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView8.RowCommand
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()

        Dim cmd4 As New Data.SqlClient.SqlCommand("Select iseva FROM commodity WHERE com_id = '" & Me.GridView8.Rows(e.CommandArgument).Cells(0).Text & "' AND iseva IS NULL ", Conn)
        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
        dr2 = cmd4.ExecuteReader
        dr2.Read()
        If dr2.HasRows = True Then
            Dim iseva As Integer
            If IsDBNull(dr2.Item("iseva")) = True Then
                iseva = 0
            Else
                iseva = CType(dr2.Item("iseva"), Integer)
            End If
            dr2.Close()
            cmd4.Cancel()
            iseva += 1
            Dim cmd As New Data.SqlClient.SqlCommand("Update commodity SET iseva = '" & iseva & "' WHERE com_id = '" & Me.GridView8.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)

            cmd.ExecuteNonQuery()
            cmd.Cancel()
            Dim cmd2 As New Data.SqlClient.SqlCommand("Select evaluat FROM member_data WHERE account = '" & Me.GridView8.Rows(e.CommandArgument).Cells(3).Text & "'", Conn)
            Dim dr As Data.SqlClient.SqlDataReader = Nothing
            dr = cmd2.ExecuteReader
            dr.Read()
            Dim eva As Integer
            If IsDBNull(dr.Item("evaluat")) = True Then
                eva = 0
            Else
                eva = CType(dr.Item("evaluat"), Integer)
            End If
            If e.CommandName = "aeva" Then
                eva += 1
            End If
            If e.CommandName = "deva" Then
                eva -= 1
            End If
            dr.Close()
            cmd2.Cancel()
            Dim cmd3 As New Data.SqlClient.SqlCommand("Update member_data SET evaluat = '" & eva & "' WHERE account = '" & Me.GridView8.Rows(e.CommandArgument).Cells(3).Text & "'", Conn)

            cmd3.ExecuteNonQuery()
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('評價給予成功')", True)
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你已經給過評價!')", True)
        End If
        Conn.Close()
        Me.GridView8.DataBind()
    End Sub

    Protected Sub GridView9_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView9.RowCommand
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()

        Dim cmd4 As New Data.SqlClient.SqlCommand("Select iseva FROM commodity WHERE com_id = '" & Me.GridView9.Rows(e.CommandArgument).Cells(0).Text & "' AND iseva2 IS NULL", Conn)
        Dim dr2 As Data.SqlClient.SqlDataReader = Nothing
        dr2 = cmd4.ExecuteReader
        dr2.Read()
        If dr2.HasRows = True Then
            Dim iseva As Integer
            If IsDBNull(dr2.Item("iseva")) = True Then
                iseva = 0
            Else
                iseva = CType(dr2.Item("iseva"), Integer)
            End If
            dr2.Close()
            cmd4.Cancel()
            iseva += 1
            Dim cmd As New Data.SqlClient.SqlCommand("Update commodity SET iseva2 = '" & iseva & "' WHERE com_id = '" & Me.GridView9.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
            cmd.ExecuteNonQuery()
            cmd.Cancel()
            Dim cmd2 As New Data.SqlClient.SqlCommand("Select evaluat FROM member_data WHERE account = '" & Me.GridView9.Rows(e.CommandArgument).Cells(3).Text & "'", Conn)
            Dim dr As Data.SqlClient.SqlDataReader = Nothing
            dr = cmd2.ExecuteReader
            dr.Read()
            Dim eva As Integer
            If IsDBNull(dr.Item("evaluat")) = True Then
                eva = 0
            Else
                eva = CType(dr.Item("evaluat"), Integer)
            End If
            If e.CommandName = "aeva" Then
                eva += 1
            End If
            If e.CommandName = "deva" Then
                eva -= 1
            End If
            dr.Close()
            cmd2.Cancel()
            Dim cmd3 As New Data.SqlClient.SqlCommand("Update member_data SET evaluat = '" & eva & "' WHERE account = '" & Me.GridView9.Rows(e.CommandArgument).Cells(3).Text & "'", Conn)
            cmd3.ExecuteNonQuery()
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('評價給予成功')", True)
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你已經給過評價!')", True)
        End If
        Conn.Close()
        Me.GridView8.DataBind()
    End Sub

    Protected Sub FormView3_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView3.ItemUpdated
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('回答問題成功')", True)
        Me.GridView10.SelectedIndex = -1
        Me.FormView3.DataBind()
        Me.DataList4.DataBind()
    End Sub

    Protected Sub GridView3_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView3.RowCommand
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        If e.CommandName = "pcheck" Then
            Select Case Me.GridView3.Rows(e.CommandArgument).Cells(3).Text
                Case "下標付款"
                    Dim cmd As New Data.SqlClient.SqlCommand("UPDATE commodity SET progress=2 WHERE com_id ='" & Me.GridView3.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('簽核完成!!')", True)
                    Me.GridView3.DataBind()
                Case "商品退還中"
                    Dim cmd As New Data.SqlClient.SqlCommand("UPDATE commodity SET progress=9 WHERE com_id ='" & Me.GridView3.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('簽核完成!!交易結束')", True)
                    Me.GridView3.DataBind()
                Case Else
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你已簽核過!!或是等待對方簽核中')", True)
            End Select

        End If
    End Sub

    Protected Sub GridView4_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView4.RowCommand
        Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection
        Conn.ConnectionString = Web.Configuration.WebConfigurationManager.ConnectionStrings("DB_RentConnectionString2").ConnectionString
        Conn.Open()
        If e.CommandName = "pcheck" Then
            Select Case Me.GridView4.Rows(e.CommandArgument).Cells(6).Text
                Case "已出貨"
                    Dim cmd As New Data.SqlClient.SqlCommand("UPDATE commodity SET progress=7,start_day='" & DateTime.Today & "' WHERE com_id ='" & Me.GridView4.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('簽核完成!!租期開始!!')", True)
                    Me.GridView4.DataBind()
                Case "租期中"
                    Dim cmd As New Data.SqlClient.SqlCommand("UPDATE commodity SET progress=8 WHERE com_id ='" & Me.GridView4.Rows(e.CommandArgument).Cells(0).Text & "'", Conn)
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('簽核完成!!')", True)
                    Me.GridView4.DataBind()
                Case Else
                    ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('你已簽核過!!或是等待對方簽核中')", True)
            End Select
        End If
    End Sub

    Protected Sub GridView4_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView4.RowDataBound

    End Sub

    Protected Sub DataList8_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList8.SelectedIndexChanged
        Response.Redirect("Default7.aspx?com_id=" & Me.DataList8.SelectedValue)
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Me.MultiView1.ActiveViewIndex = 9
    End Sub

    Protected Sub DataList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList4.SelectedIndexChanged
        Session("act") = 1
        Response.Redirect("Default7.aspx?com_id=" & Me.DataList4.SelectedValue)
    End Sub

    Protected Sub DataList5_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList5.SelectedIndexChanged
        Session("act") = 1
        Response.Redirect("Default7.aspx?com_id=" & Me.DataList5.SelectedValue)

    End Sub

    Protected Sub DataList7_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList7.SelectedIndexChanged
        Session("act") = 1
        Response.Redirect("Default7.aspx?com_id=" & Me.DataList7.SelectedValue)
    End Sub
End Class
