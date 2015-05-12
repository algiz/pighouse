
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('尚未開放!!敬請期待!!');location.href='Default.aspx'", True)
    End Sub
End Class
