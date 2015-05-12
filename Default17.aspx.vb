
Partial Class Default17
    Inherits System.Web.UI.Page

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Me.MultiView1.ActiveViewIndex = Menu1.Items.IndexOf(Menu1.SelectedItem)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request("userid") = "" Then
            Response.Redirect("default6.aspx")
        End If

        If Session("menun") = 2 Then
            Me.MultiView1.ActiveViewIndex = 0
            Me.Menu1.Items(0).Selected = True
        End If
        If Session("menun") = 1 Then
            Me.MultiView1.ActiveViewIndex = 1
            Me.Menu1.Items(1).Selected = True
        End If
    End Sub


End Class
