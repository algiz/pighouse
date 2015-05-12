
Partial Class tsss
    Inherits System.Web.UI.Page

 

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As Integer
        For i = 0 To Me.CheckBoxList1.Items.Count - 1
            If CheckBoxList1.Items(i).Selected Then
                a += CheckBoxList1.Items(i).Value
                Label1.Text = a
            End If
        Next

        Dim xd As DateTime = Now
        Label2.Text = xd.AddDays(Me.TextBox1.Text)
        Label1.Text = DateTime.Now

    End Sub

'OOP練習
    public class Tree
        public name as string
        public wight as Integer
        public hight as integer

    function(byval water as integer) as O2
    dim result as o2 = new O2()
    result.volume = light * 2
    return result 
    end function

    end class

    public class O2
        public volume as string
    end class


    public class Glucose

Module Module1
sub Main()
 dim t1 as tree = new tree()

 dim o as o2 = p1.o2()

 console.writeline(o.volume)
end sub
end Module


'for each 迴圈（取陣列值）
    dim fltype() as string = {"Abc","bcd","cde"}
    for each ftype as string in fltype

    next

End Class
