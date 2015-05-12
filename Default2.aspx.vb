﻿
Partial Class Default6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '若尚未登入返回登入畫面
        ' If Page.User.Identity.Name = "" Then
        ' Response.Redirect("Login.aspx")
        'End If
        TextBox1.Attributes.Add("onkeypress", "if( event.keyCode == 13 ) { return false; }")
        RadioButtonList1.Attributes.Add("onkeypress", "if( event.keyCode == 13 ) { return false; }")
        CheckBoxList1.Attributes.Add("onkeypress", "if( event.keyCode == 13 ) { return false; }")
        TextBox2.Attributes.Add("onkeypress", "if( event.keyCode == 13 ) { return false; }")
        TextBox3.Attributes.Add("onkeypress", "if( event.keyCode == 13 ) { return false; }")
        If Page.IsPostBack = True Then
            Session.Clear()
        Else
            TextBox1.Text = Session("search")
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        For i = 0 To Me.CheckBoxList1.Items.Count - 2
            If CheckBoxList1.Items(i).Selected = True Then
                Me.SqlDataSource3.SelectCommand += Me.CheckBoxList1.Items(i).Value
            End If
        Next
        Me.SqlDataSource3.SelectCommand += Me.DropDownList2.SelectedValue

        If CheckBoxList1.Items(Me.CheckBoxList1.Items.Count - 1).Selected = True Then
            Me.SqlDataSource3.SelectCommand += "ORDER BY publish_time DESC"
        End If
    End Sub

    Protected Sub ListView2_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView2.DataBound
        For i = 0 To Me.ListView2.Items.Count - 1
            CType(Me.ListView2.Items(i).FindControl("Image1"), Image).Attributes.Add("onload", "if (this.width>120) this.width=120;")
            If CType(Me.ListView2.Items(i).FindControl("HyperLink1"), HyperLink).Text.Length >= 14 Then
                CType(Me.ListView2.Items(i).FindControl("HyperLink1"), HyperLink).Text = CType(Me.ListView2.Items(i).FindControl("HyperLink1"), HyperLink).Text.Substring(0, 14) + "..."
            End If
        Next
        Session.Clear()
    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub
    Protected Sub DataList1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound
        CType(e.Item.FindControl("Image1"), Image).Attributes.Add("onload", "if (this.width>120) this.width=120;")
        Dim Hy As HyperLink = CType(e.Item.FindControl("HyperLink1"), HyperLink)
        If Hy.Text.Length >= 10 Then
            Hy.Text = Hy.Text.Substring(0, 10) + "..."
        End If
    End Sub
    Protected Sub DataList2_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList2.ItemDataBound
        CType(e.Item.FindControl("Image1"), Image).Attributes.Add("onload", "if (this.width>120) this.width=120;")
        Dim Hy As HyperLink = CType(e.Item.FindControl("HyperLink1"), HyperLink)
        If Hy.Text.Length >= 10 Then
            Hy.Text = Hy.Text.Substring(0, 10) + "..."
        End If
    End Sub
End Class

