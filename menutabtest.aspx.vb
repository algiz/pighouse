
Partial Class tabesstest
    Inherits System.Web.UI.Page

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        MultiView1.ActiveViewIndex = Menu1.SelectedValue
    End Sub
End Class
