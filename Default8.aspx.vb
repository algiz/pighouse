
Partial Class Default8
    Inherits System.Web.UI.Page

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Me.MultiView1.ActiveViewIndex = Menu1.Items.IndexOf(Menu1.SelectedItem)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Sclick As String = CType(Session.Item("Sclick"), String)
        If Sclick = "click_yes" Then
            Me.Menu1.Items(2).Selected = True
            Me.MultiView1.ActiveViewIndex = 2
            Session("Sclick") = ""
        ElseIf Sclick = "click_yes2" Then
            Me.Menu1.Items(1).Selected = True
            Me.MultiView1.ActiveViewIndex = 1
            Session("Sclick") = ""
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.TextBox4.Text = "姓名:" + Me.TextBox2.Text + "<br />Email:" + Me.TextBox3.Text + "<br />內容:" + Me.TextBox4.Text
        Me.SqlDataSource8.Insert()
        Me.TextBox1.Text = ""
        Me.TextBox2.Text = ""
        Me.TextBox3.Text = ""
        Me.TextBox4.Text = ""
    End Sub
End Class
