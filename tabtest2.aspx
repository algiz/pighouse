<%@ Page Language="VB" AutoEventWireup="false" CodeFile="tabtest2.aspx.vb" Inherits="tsss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
<script type="text/javascript" src="jquery-1.2.3.pack.js"></script>
<script type="text/javascript" src="jquery.idTabs.min.js"></script>
<style type="text/css">
.idTabs
{
    background-color:#ffffff;
    margin :0;
    padding:0;
    height :30px;
    margin-bottom:20px;
}

.idTabs li
{
 text-align :left;
 color:#66cc00;
 font-size :80%;
 font-weight :bold;
 border-bottom :3px dotted #FF6600;
 border-left:8px solid #FF9900;
 line-height :200%;
 padding-left :10px;  
 float :left ;
 width: 100px;
 list-style: none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

          <ul class="idTabs">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                  <asp:ListItem>0</asp:ListItem>
                  <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
              </asp:CheckBoxList>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              <asp:Button ID="Button1" runat="server" Text="Button" />
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </ul>

    </div>
    </form>
</body>
</html>
