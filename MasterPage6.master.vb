
Partial Class MasterPage6
    Inherits System.Web.UI.MasterPage
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("Sclick") = "click_yes"
        Response.Redirect("~/Default8.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("search") = TextBox1.Text
        Response.Redirect("~/Default6.aspx")
    End Sub
End Class

