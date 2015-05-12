<%@ Page Language="VB" AutoEventWireup="false" CodeFile="databasetest.aspx.vb" Inherits="databasetest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        
        SelectCommand="SELECT * FROM [category]">
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="ca_name" DataValueField="ca_id">
    </asp:DropDownList>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:CheckBoxList>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
 <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>  
   
  
 <asp:Button ID="Button1" runat="server" Text="Button" />  
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="test">
             <EditItemTemplate>  
                 <asp:Button ID="btnUpdate" runat="server" Text="維護" CommandName="Update" />  
                 <asp:Button ID="btnCancel" runat="server" Text="取消" CommandName="Cancel" />  
             </EditItemTemplate>  
             <ItemTemplate>  
                 <asp:Button ID="btnEdit" runat="server" Text="編輯" CommandName="Edit" />  
                 <asp:Button ID="btnDel" runat="server" Text="刪除" CommandName="Delete" OnClientClick="return confirm('您確定要刪除此筆資料嗎??');" />  
             </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView> 
    </form>
</body>
</html>
