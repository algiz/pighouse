
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("Sclick") = "click_yes2"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        Session("Sclick") = "click_yes"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If User.Identity.Name = "" Then
            Session("usercenter") = 0
            Response.Redirect("Login.aspx?ReturnUrl=%2frent%2fDefault5-1.aspx")
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("usercenter") = 0
        Response.Redirect("~/Default5-1.aspx")
    End Sub

    Protected Sub ListView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DataBound
        For i = 0 To Me.ListView1.Items.Count - 1
            If CType(Me.ListView1.Items(i).FindControl("Label1"), Label).Text.Length >= 10 Then
                CType(Me.ListView1.Items(i).FindControl("Label1"), Label).Text = CType(Me.ListView1.Items(i).FindControl("Label1"), Label).Text.Substring(0, 10)
            End If
        Next
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("plog") = 1
        Response.Redirect("default5-1.aspx")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session("plog") = 2
        Response.Redirect("default14.aspx")
    End Sub
End Class
