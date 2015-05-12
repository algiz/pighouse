<%@ Page Language="VB" MasterPageFile="~/MasterPage7.master" AutoEventWireup="false" CodeFile="Default8-5.aspx.vb" Inherits="Default8_5" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 15 * FROM [customer_service] WHERE cust_id like @cust_id + '%' ORDER BY [cust_ck_percentage] DESC">
        <SelectParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="cust_id" 
                QueryStringField="cust_id" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
    <div id="mainout">

<div class="leftframe">

<div class="section">常見問題</div>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal ; font-size :80%; border-bottom: 2px dotted #ff9900;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
            <dt style=" color: #333333; list-style-type:circle ; font-size :80%;">
            
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("cust_answer") %>'></asp:Label>

        
            </dt> 
        </ItemTemplate>
        <AlternatingItemTemplate>
        
        
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">cust_ask_Q:
                <asp:TextBox ID="cust_ask_QTextBox" runat="server" 
                    Text='<%# Bind("cust_ask_Q") %>' />
                <br />
                cust_ck_percentage:
                <asp:TextBox ID="cust_ck_percentageTextBox" runat="server" 
                    Text='<%# Bind("cust_ck_percentage") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li ID="itemPlaceholder" runat="server" />
                </ul>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <EditItemTemplate>
                <li style="background-color: #999999;">cust_ask_Q:
                    <asp:TextBox ID="cust_ask_QTextBox" runat="server" 
                        Text='<%# Bind("cust_ask_Q") %>' />
                    <br />
                    cust_ck_percentage:
                    <asp:TextBox ID="cust_ck_percentageTextBox" runat="server" 
                        Text='<%# Bind("cust_ck_percentage") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </li>
            </EditItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">cust_ask_Q:
                    <asp:Label ID="cust_ask_QLabel" runat="server" 
                        Text='<%# Eval("cust_ask_Q") %>' />
                    <br />
                    cust_ck_percentage:
                    <asp:Label ID="cust_ck_percentageLabel" runat="server" 
                        Text='<%# Eval("cust_ck_percentage") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
    </asp:ListView>
 
</div>


</div>

</asp:Content>

