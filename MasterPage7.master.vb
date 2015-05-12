
Partial Class image_MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("Sclick") = "click_yes"
        Response.Redirect("~/Default8.aspx")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Select Case Me.DropDownList1.SelectedItem.Text
            Case "所有"
                Response.Redirect("~/Default6.aspx?k=" + TextBox1.Text)
            Case "租賃"
                Response.Redirect("~/Default2.aspx?k=" + TextBox1.Text)
            Case "交換"
                Response.Redirect("~/Default3.aspx?k=" + TextBox1.Text)
        End Select
    End Sub
End Class

