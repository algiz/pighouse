<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default21.aspx.vb" Inherits="Default21" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT [c] FROM [c]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="c" HeaderText="c" SortExpression="c" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
