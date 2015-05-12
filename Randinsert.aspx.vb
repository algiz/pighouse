
Partial Class Default10
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub


    Public Shared Function GetRandomString(ByVal length As Integer) As String

        Dim r As New Random
        Dim code As String = ""

        For i As Integer = 0 To length - 1
            Select Case r.[Next](0, 3)
                Case 0
                    code += Convert.ToString(r.Next(0, 10))

                    Exit Select
                Case 1
                    code += CChar(ChrW(r.Next(65, 91)))

                    Exit Select
                Case 2
                    code += CChar(ChrW(r.Next(97, 122)))

                    Exit Select
            End Select

        Next

        Return code
    End Function
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim generator As New Random
        Dim randomValue As String = ""

        Dim nux As Integer
        nux = TextBox1.Text

        For j = 0 To nux

            For i = 0 To 11
                Select Case generator.Next(0, 3)
                    Case 0
                        randomValue += Convert.ToString(generator.Next(0, 10))
                        Exit Select
                    Case 1
                        randomValue += CChar(ChrW(generator.Next(65, 91)))
                        Exit Select
                    Case 2
                        randomValue += CChar(ChrW(generator.Next(97, 122)))
                        Exit Select
                End Select
            Next
            Me.Label1.Text = randomValue
            Me.SqlDataSource1.Insert()
            randomValue = ""
        Next
    End Sub
End Class
