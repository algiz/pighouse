
Partial Class Default5
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Login.aspx?ReturnUrl=%2frent%2fDefault5-1.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("~/regfrom.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Me.MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Me.MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        Me.MultiView1.ActiveViewIndex = 0
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.Name <> "" Then
            Panel1.Visible = False
            Response.Redirect("Default5-1.aspx")
        Else
            Panel1.Visible = True
        End If

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session("Sclick") = "click_yes"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("Sclick") = "click_yes2"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("Default14.aspx")
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("Default9.aspx")
    End Sub

    Protected Sub ImageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Response.Redirect("Default14.aspx")
    End Sub

    Protected Sub ImageButton6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        If User.Identity.Name = "" Then
            Session("usercenter") = 1
            Response.Redirect("Login.aspx?ReturnUrl=%2frent%2fDefault5-1.aspx")
        End If
    End Sub

    Protected Sub ImageButton7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('準備中..尚未開放!')", True)
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('準備中..尚未開放!')", True)
    End Sub

    Protected Sub ImageButton9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click
        Response.Redirect("Default8.aspx")
    End Sub

    Protected Sub ImageButton10_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton10.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
