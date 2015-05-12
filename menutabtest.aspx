<%@ Page Language="VB" AutoEventWireup="false" CodeFile="tabesstest.aspx.vb" Inherits="tabesstest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#FFFBD6" 
                DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.9em" 
                ForeColor="#990000" StaticSubMenuIndent="10px">
            <StaticSelectedStyle BackColor="#FFCC66" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="新增項目" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="新增項目" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="新增項目" Value="2"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                TEST1
            </asp:View>
            <asp:View ID="View2" runat="server">
                test2
            </asp:View>
            <asp:View ID="View3" runat="server">
                Test3
            </asp:View>
        </asp:MultiView>
        </asp:Panel>

    </div>
    </form>
</body>
</html>
