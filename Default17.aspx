<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default17.aspx.vb" Inherits="Default17" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.topframe
{
    width:920px;
    border :2px solid #c9cfcf;
    margin:10px 0;
}
</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        
        SelectCommand="SELECT * FROM [member_data],[commodity] WHERE member_data.id = commodity.re_member_id AND account = @account">
    <SelectParameters>
        <asp:QueryStringParameter Name="account" QueryStringField="userid" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           <div class="topframe">
           會員：<asp:Label ID="Label1" runat="server" Text='<% #Eval("account") %>'></asp:Label>評價：<asp:Label ID="Label2" runat="server" Text='<%#Eval("evaluat") %>'></asp:Label>
           </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1em" 
        ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <StaticSelectedStyle BackColor="#FFCC66" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <Items>
            <asp:MenuItem Text="關於我" Value="關於我"></asp:MenuItem>
            <asp:MenuItem Text="所有商品" Value="所有商品"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
         <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           <div class="topframe">
           <asp:Label ID="Label1" runat="server" Text='<% #Eval("about_me") %>'></asp:Label>
           </div>
        </ItemTemplate>
    </asp:FormView>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id,com_id" DataSourceID="SqlDataSource1" AllowPaging="True" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:ImageField DataImageUrlField="com_pic" 
                        DataImageUrlFormatString="~\ComPicData\{0}" HeaderText="商品圖片">
                        <ControlStyle Height="100"/>
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="com_id" 
                        DataNavigateUrlFormatString="default7.aspx?com_id={0}" DataTextField="com_name" 
                        HeaderText="名稱" />
                    <asp:BoundField DataField="click_percentage" HeaderText="點閱數" 
                        SortExpression="click_percentage" />
                    <asp:BoundField DataField="rent" HeaderText="租金" SortExpression="rent" />
                    <asp:BoundField DataField="add_money" HeaderText="訂金" 
                        SortExpression="add_money" />
                    <asp:BoundField DataField="what_exchange" HeaderText="徵求物品" 
                        SortExpression="what_exchange" />
                    <asp:BoundField DataField="end_time" HeaderText="結束時間" 
                        SortExpression="end_time" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </asp:View>
    </asp:MultiView>
    </asp:Content>

