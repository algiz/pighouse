
Partial Class Default11
    Inherits System.Web.UI.Page

    Protected Sub FormView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.DataBound
        If IsNumeric(Request("com_id")) And Request("com_id") <> "" Then
            Me.Label5.Text = CInt(CType(Me.FormView1.FindControl("Label1"), Label).Text) + CInt(CType(Me.FormView1.FindControl("Label2"), Label).Text) + CInt(CType(Me.FormView1.FindControl("Label3"), Label).Text)

            Select Case CType(Me.FormView1.FindControl("Label6"), Label).Text
                Case 1
                    CType(Me.FormView1.FindControl("Label6"), Label).Text = "貨到付款"
                Case 2
                    CType(Me.FormView1.FindControl("Label6"), Label).Text = "面交自取"
                Case 3
                    CType(Me.FormView1.FindControl("Label6"), Label).Text = "郵局或銀行轉帳"
                Case 4
                    CType(Me.FormView1.FindControl("Label6"), Label).Text = "郵局無摺存簿"
                Case 5
                    CType(Me.FormView1.FindControl("Label6"), Label).Text = "虛擬貨幣"
            End Select

            If CType(Me.FormView1.FindControl("Label6"), Label).Text <> "虛擬貨幣" Then
                Me.Button1.Visible = False
                Me.Button2.Visible = True
            Else
                Me.Button1.Visible = True
                Me.Button2.Visible = False
            End If
            Session("paytotal") = Me.Label5.Text
        Else
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session("setp") = 2
        Response.Redirect("Default12.aspx?com_id=" & Request("com_id"))

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("setp") = 3
        Response.Redirect("Default13.aspx?com_id=" & Request("com_id"))

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("setp").ToString <> "1" Then
                ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
            End If
        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me, Me.[GetType](), "msg", "alert('請由正常管道進入!!');location.href='default6.aspx'", True)
        End Try
        
    End Sub
End Class
