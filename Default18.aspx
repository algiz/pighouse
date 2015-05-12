<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default18.aspx.vb" Inherits="Default18" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type ="text/css" >
.cframe
{
    width :920px;
    margin :10px 0;
    border :2px solid #c9cfcf;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class ="cframe">
請選擇想要交換的商品：<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT * FROM [commodity] WHERE ([whether_shelf] = @whether_shelf)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="whether_shelf" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="com_id" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                SortExpression="com_name" />
            <asp:ImageField DataImageUrlField="com_pic" 
                DataImageUrlFormatString="~\ComPicData\{0}" HeaderText="商品圖片">
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</div>
</asp:Content>

