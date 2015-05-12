<%@ Page Language="VB" MasterPageFile="~/MasterPage7.master" AutoEventWireup="false" CodeFile="Default8.aspx.vb" Inherits="Default8" title="客服中心 - 租圈" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            background-color: #FFFFCE;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 10 * FROM [customer_service] ORDER BY [cust_ck_percentage] DESC"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        
        SelectCommand="SELECT top 5 * FROM [customer_service] WHERE ([cust_id] LIKE @cust_id + '%')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="001" Name="cust_id" Type="String" />
                </SelectParameters>
    </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 5 * FROM [customer_service] WHERE ([cust_id] LIKE @cust_id + '%')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="002" Name="cust_id" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 5 * FROM [customer_service] WHERE ([cust_id] LIKE @cust_id + '%')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="003" Name="cust_id" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 5 * FROM [customer_service] WHERE ([cust_id] LIKE @cust_id + '%')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="004" Name="cust_id" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT top 5 * FROM [customer_service] WHERE ([cust_id] LIKE @cust_id + '%')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="005" Name="cust_id" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                
                SelectCommand="SELECT TOP 5 * FROM [all_system] WHERE ([S_whether] = @S_whether) ORDER BY S_time DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="S_whether" Type="Int32" />
        </SelectParameters>
            </asp:SqlDataSource>
    <div id="mainout">
<div class="sitemappath">
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        DeleteCommand="DELETE FROM [message] WHERE [mess_id] = @mess_id" 
        InsertCommand="INSERT INTO message(title, mess_data, [content], isload, mess_m_id, re_mes_id) VALUES (@title, { fn NOW() }, @content, @isload, @mess_m_id, @re_mes_id)" 
        SelectCommand="SELECT * FROM [message] WHERE ([mess_id] = @mess_id)" 
        UpdateCommand="UPDATE [message] SET [title] = @title, [mess_data] = @mess_data, [content] = @content, [isload] = @isload, [mess_m_id] = @mess_m_id, [re_mes_id] = @re_mes_id WHERE [mess_id] = @mess_id">
        <SelectParameters>
            <asp:Parameter DefaultValue="1021" Name="mess_id" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="mess_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter DbType="Datetime" Name="mess_data" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="isload" Type="Int32" />
            <asp:Parameter Name="mess_m_id" Type="Int32" />
            <asp:Parameter Name="re_mes_id" Type="Int32" />
            <asp:Parameter Name="mess_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" 
                Type="String" />
            <asp:Parameter DbType="Datetime" DefaultValue="" Name="mess_data" />
            <asp:ControlParameter ControlID="TextBox4" Name="content" PropertyName="Text" 
                Type="String" />
            <asp:Parameter DefaultValue="" Name="isload" Type="Int32" />
            <asp:Parameter DefaultValue="1021" Name="mess_m_id" Type="Int32" />
            <asp:Parameter DefaultValue="1021" Name="re_mes_id" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" 
                            Font-Names="Verdana" Font-Size="0.9em" ForeColor="#990000" 
                            Orientation="Horizontal" StaticSubMenuIndent="10px">
            <StaticSelectedStyle BackColor="#FFCC66" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="客服中心首頁" Value="客服中心首頁"></asp:MenuItem>
                <asp:MenuItem Text="常見問題" Value="常見問題"></asp:MenuItem>
                <asp:MenuItem Text="新手上路" Value="新手上路"></asp:MenuItem>
                <asp:MenuItem Text="租圈規章" Value="租圈規章"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
<div class="rightframe">
<div class="section">客服公告</div>
    <asp:ListView ID="ListView7" runat="server" DataSourceID="SqlDataSource7">
                                <ItemTemplate>
                                
                                    <span style=" font-size :80%; text-align :left ; font-weight :bold ;">
                                    
                                    <asp:Image ID="Image2" runat="server" ImageUrl="images/ICON.gif" />
                                        <asp:HyperLink ID="HyperLink13" runat="server" Text ='<%# Eval("S_title") %>' ForeColor="#669900"></asp:HyperLink>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("S_time") %>' ForeColor="#669900"></asp:Label>   
                                         <br />
                                       <asp:Label ID="Label2" runat="server" Text='<%#Eval("S_content") %>'></asp:Label>  
                                        <br />    
                                    </span>
                                    <hr />
                                </ItemTemplate>
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <span style="">S_title:
                                    <asp:TextBox ID="S_titleTextBox" runat="server" Text='<%# Bind("S_title") %>' />
                                    <br />
                                    S_time:
                                    <asp:TextBox ID="S_timeTextBox" runat="server" Text='<%# Bind("S_time") %>' />
                                    <br />
                                    S_whether:
                                    <asp:TextBox ID="S_whetherTextBox" runat="server" 
                                        Text='<%# Bind("S_whether") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                        Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Clear" />
                                    <br />
                                    <br />
                                    </span>
                                </InsertItemTemplate>
                                <LayoutTemplate>
                                    <div ID="itemPlaceholderContainer" runat="server" style="">
                                        <span ID="itemPlaceholder" runat="server" />
                                    </div>
                                </LayoutTemplate>
                                <EditItemTemplate>
                                    <span style="">S_title:
                                    <asp:TextBox ID="S_titleTextBox" runat="server" Text='<%# Bind("S_title") %>' />
                                    <br />
                                    S_time:
                                    <asp:TextBox ID="S_timeTextBox" runat="server" Text='<%# Bind("S_time") %>' />
                                    <br />
                                    S_whether:
                                    <asp:TextBox ID="S_whetherTextBox" runat="server" 
                                        Text='<%# Bind("S_whether") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                        Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Cancel" />
                                    <br />
                                    <br />
                                    </span>
                                </EditItemTemplate>
                                <SelectedItemTemplate>
                                    <span style="">S_title:
                                    <asp:Label ID="S_titleLabel" runat="server" Text='<%# Eval("S_title") %>' />
                                    <br />
                                    S_time:
                                    <asp:Label ID="S_timeLabel" runat="server" Text='<%# Eval("S_time") %>' />
                                    <br />
                                    S_whether:
                                    <asp:Label ID="S_whetherLabel" runat="server" Text='<%# Eval("S_whether") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </SelectedItemTemplate>
                            </asp:ListView>
<div class="section">常見問題點閱排行</div>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
 <div style="text-align:left; font-size :90%;">
     <asp:HyperLink ID="HyperLink2" runat="server" Text="More..." 
         NavigateUrl="~/Default8-5.aspx"></asp:HyperLink></div>
<div class="buttomdiv">
<div class="section">聯絡客服</div>
<table width="400px">
<tr>
<td class="style1">標題</td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td class="style1">姓名</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td class="style1">E-mail</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td style="background-color: #FFFFCE">問題敘述</td><td></td>
</tr>
<tr>
<td colspan="2">
    <asp:TextBox ID="TextBox4" runat="server" TextMode ="MultiLine" Width ="400px" 
        Height="300px" ></asp:TextBox>
</td>
</tr>
<tr align ="center" >
<td colspan ="2"><asp:Button ID="Button1" runat="server" Text="送出" />

    <asp:Button ID="Button2" runat="server" Text="清除" /></td>

    

    

</tr>
</table>
</div>

</div>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <div class="leftframe">
<div class="linframe">
<div class="section">會員</div>
<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
  <div style="text-align:right; font-size :90%;">
     <asp:HyperLink ID="HyperLink3" runat="server" Text="More..." NavigateUrl="~/Default8-5.aspx?cust_id=001"></asp:HyperLink></div>
<div class="section">出租與承租</div>
<asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource4">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
  <div style="text-align:right; font-size :90%;">
     <asp:HyperLink ID="HyperLink4" runat="server" Text="More..." NavigateUrl="~/Default8-5.aspx?cust_id=003"></asp:HyperLink></div>
<div class="section">虛擬貨幣與費用</div>
<asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
  <div style="text-align:right; font-size :90%;">
     <asp:HyperLink ID="HyperLink7" runat="server" Text="More..." NavigateUrl="~/Default8-5.aspx?cust_id=004"></asp:HyperLink></div>

</div>

<div class="rinframe">
<div class="section">商品</div>
<asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource3">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
  <div style="text-align:right; font-size :90%;">
     <asp:HyperLink ID="HyperLink5" runat="server" Text="More..." NavigateUrl="~/Default8-5.aspx?cust_id=002"></asp:HyperLink></div>
  <div class="section">以物易物</div>
<asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6">
    <ItemTemplate>
            <li style=" color: #333333; list-style-type :decimal; font-size :80%;">
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cust_ask_Q") %>'></asp:HyperLink>
                <br />
            </li>
        </ItemTemplate>
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
  <div style="text-align:right; font-size :90%;">
     <asp:HyperLink ID="HyperLink6" runat="server" Text="More..." NavigateUrl="~/Default8-5.aspx?cust_id=005"></asp:HyperLink></div>

</div>
</div>
            </asp:View>
            <asp:View ID="View3" runat="server">
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/reg/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/reg/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/up/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/up/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/rent/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/rent/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/ch/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/ch/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/check/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/check/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/va/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/va/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>
<div style ="text-align :center ; margin-top:15px;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="600" height="390">
	<param name="movie" value="Teaching/po/a11.swf">
	<param name="quality" value="high">
	<param name="wmode" value="transparent">
	<embed src="Teaching/po/a11.swf" width="600" height="390" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
</object>
</div>

            </asp:View>
            <asp:View ID="View4" runat="server">
            <div class="leftframe">
            <div class="section ">租圈章規</div>
            <div class="rightframe" style="width:700px; font-size :small; line-height :1.8;">
            <b>一、本會員合約雙方為「租圈」與「租圈」會員所共同遵守。</b><br />
            <div style="padding-left :30px;">
                1.本會員合約內容包括此正文及所有租圈已經公怖的或將來可能公佈的各類政策規範。所有政策規範為會員合約不可分割的一部分，與會員合約正文具有同等法律效力。 <br />
                <br />
                2.會員在使用租圈提供的各項服務的同時，承諾接受並遵守各項相關規則的規定。租圈有權根據需要不定時更新、修改本會員合約或各類規則，如本會員合約有任何變更，將在網站上公告並通知會員。如會員不同意相關變更，必須停止使用“服務”。修訂的內容一經租圈公告後，立即自動生效，並成為本會員合約的一部分。登入或繼續使用“服務”將表示會員接受經修訂的規定。  
                <br />
                <br />
                3.會員在確認本會員合約後，此會員合約即在會員和租圈之間產生法律效力。請會員務必在註冊之前認真閱讀全部會員合約內容，如有任何疑問，可向租圈客服諮詢。  
                <br />
                <br />
                a.無論會員事實上是否在註冊之前認真閱讀了本會員合約，只要會員點選協議正本下方的「我同意」按鈕並按照註冊程式成功註冊為會員，會員的行為即表示其同意並簽署了本會員合約。  
                <br />
                <br />
                b.本會員合約不涉及會員與租圈其他會員之間因網上交易而產生的法律關係及法律糾紛。<br />
                <br />
                </div>
                <b>二、定義</b> <br />
                <div style="padding-left :30px;">
                1.會員：會員必須是具備完全民事行為能力的自然人，或者是具有合法經營資格的法人。<br />
&nbsp;<br />
                a.只要是年滿十八歲且領有身分證之國人就可以註冊成為會員。<br />
                十八歲以上未滿二十歲之未成年人在租圈上進行交易時，應得到法定代理人同意或由法定代理人陪同，並遵守本合約及相關法律規定。若該未成年會員與交易相對人或其他第三人，因使用本網站服務所發生之糾紛，本公司概不負責。 
                <br />
                <br />
                b.年滿二十歲之成年人需自行負完全的行為能力責任。無民事行為能力人、限制民事行為能力人以及無經營或特定經營資格的組織不當註冊為會員，其與租圈之間的會員合約自始無效，一經發現，有權立即註銷該會員資格，並追究其使用租圈“服務”的一切法律責任。  
                <br />
                <br />
                2.會員註冊：會員註冊是指網友至租圈，並按要求填寫相關資訊並確認同意履行相關會員合約的過程。<br />
&nbsp;<br />
                3.租圈網站僅作為交易平台：對於被刊登物品的品質、安全及合法性，刊登物品的真實與正確性，以及賣方出售其物品與買方購買物品的能力，租圈均無法控制，且不保證物品成交後買家或賣家將實際完成交易。租圈提醒會員應該通過自己的謹慎判斷確定物品及相關資訊的真實性、合法性和有效性。  
                <br />
                </div> 
                
                <b>三、費用</b> 
                <div style="padding-left :30px;">
                <br />
                1.目前租圈所提供之各項服務均為免費，會保留將來使用服務收費與否之決定權。 
                <br />
                <br />
                2.會員因為進行交易而發生的所有應納稅賦，以及一切硬體、軟體、服務及其它方面的費用均由會員負責支付。<br />
                </div> 
                
                <b>四、會員權利和義務：</b> <br />
                <div style="padding-left :30px;">
                1.會員有權利擁有自己在租圈上的會員帳號及交易密碼，並有權利使用自己的會員帳號及密碼隨時登入租圈平台。會員不得以任何形式擅自轉讓或授權他人使用自己的會員帳號。<br />
                <br /> 
                2.會員有權根據本服務會員合約的規定以及租圈網上公佈的相關規則，使用搜尋、查詢、出價、刊登、租賃物品等功能。以及給予交易對方信用評價、參與相關活動以及有權享受租圈提供的其他的有關資訊服務。  
                <br />
                <br />
                3.會員如發現其他會員有違法或違反本會員合約的行為，可以向租圈進行檢舉反應。如會員因交易與其他會員產生訴訟，會員有權透過程序要求租圈提供相關資料。  
                <br />
                <br />
                4.會員有義務在註冊時提供自己的真實資料，並保證如電子郵件位址、連絡電話、通訊地址等內容的有效性，保證租圈及其他會員皆可以通過上述聯繫方式與自己進行聯繫。同時，會員也有義務在相關資料實際變更及更新有關註冊資料。會員保證不以他人資料進行註冊或認證。<br />
&nbsp;<br />
                5.會員應當保證在使用租圈平台進行交易過程中遵守誠實信用原則，不在交易過程中採取不正當競爭行為（如假出租），不擾亂網站的正常秩序（如駭客行為），不從事與網上交易無關的行為（如亂發廣告垃圾信）。  
                <br />
                <br />
                6.會員不應在租圈上惡意毀謗其他會員，或採取不正當手段提高自身的信用評價或降低其他會員的信用評價。 7.會員在租圈不得刊登各類違法或違規物品或內容。  
                <br />
                <br />
                8.會員在租圈不得承租國家禁止的或限制的物品、不得買賣侵犯他人智慧財產權或其他合法權益的物品，也不得買賣違反公序良俗的物品、或認為不適合在租圈銷售的物品。  
                <br />
                <br />
                9.會員承諾自己在使用租圈時的所有行為均遵守國家法律、法規和租圈的相關規範以及各種社會公序良俗。如有違反而導致任何法律後果，會員將以自己的名義承擔所有的法律責任。  
                <br />
                <br />
                10.會員同意不對租圈上任何資料作商業性利用，包括不限於在未經事先書面同意的情況下，以複製、散布等方式使用在露天拍賣上的任何資料。<br />
                <br />
                </div> 
                <b>五、租圈的權利和義務</b>  <br />
                <div style="padding-left :30px;">
                1.租圈有義務在現有技術上維護整個平台的正常運行，並努力提升和改進技術，使會員拍賣交易活動得以順利進行。  
                <br />
                <br />
                2.會員在註冊或使用租圈時發生任何問題或反應的情況，應在合理的時間內作出回覆。<br />
&nbsp;<br />
                3.對於會員在租圈平台上的不當行為，或其他任何認為應當終止服務的情況，租圈須事先徵求會員的同意有權隨時作出刪除相關資訊、終止服務提供等處理。<br />
&nbsp;<br />
                4.因網路特殊性，租圈無法對所有會員的註冊資料、所有的交易行為以及與交易有關的其他事項進行事先審查，但如存在下列情況：  
                <br />
                <br />
                a.會員或其他第三方，向租圈檢舉有違法或不當行為的，以普通非專業交易者的知識標準對相關內容進行判斷，可以明顯認為這些內容或行為具有違法或不當性質時。租圈有權根據不同情況選擇保留或刪除相關資訊或繼續、停止對該會員提供服務，並追究相關法律責任。  
                <br />
                <br />
                5.會員在租圈交易過程中如與其他會員因交易產生糾紛，請求租圈從中予以協調，經審核後，租圈有權透過電子郵件或電話聯繫向糾紛雙方瞭解情況，並將所瞭解的情況透過電子郵件或電話互相通知對方。  
                <br />
                <br />
                6.會員因在租圈上交易而與其他會員產生訴訟，會員可透過司法部門或行政部門依照法定程序要求租圈提供相關資料，租圈應積極配合並提供有關資料。  
                <br />
                <br />
                7.租圈有權對會員的註冊資料及交易行為進行查閱，發現註冊資料或交易行為中存在任何問題或懷疑，均有權向會員發出詢問及要求改正的通知或者直接作出刪除等處理。  
                <br />
                <br />
                8.經國家生效法律文書或行政處罰決定確認會員存在違法行為，或者租圈有足夠事實依據可以認定會員存在違法或違反服務會員合約行為的，有權在租圈交易平台及所在網站上以網路發布形式公佈會員的違法行為。<br />
&nbsp;<br />
                9.資料使用權：任何資料一經您上載、傳送、輸入或提供予租圈時，視為您已允許依照隱私權政策內規範下，使用、修改、重製、公開播送、改作、散布、發行、公開發表、公開傳輸該等資料，並得將前述權利轉授權他人，您對此絕無異議。您並應保證租圈使用、修改、重製、公開播送、改作、散布、發行、公開發表、公開傳輸、轉授權該等資料，不致侵害任何第三人之智慧財產權，否則應對租圈負損害賠償責任（包括但不限於訴訟費用及律師費用等）。  
                <br />
                </div> 
                <b>六、服務的中斷和終止：</b>
                <div style="padding-left :30px;"> 
                <br />
                1.如會員向租圈提出註銷帳號時，經租圈審核同意，註銷該會員帳號，會員即解除與租圈的會員合約關係。但註銷該會員帳號後，租圈仍保留下列權利： 
                <br />
                <br />
                a.會員帳號註銷後，有權保留該會員的註冊資料及以前的交易行為記錄。<br />
&nbsp;<br />
                b.會員帳號註銷後，如會員在登出前在租圈平台上存在違法或違反合約的行為，仍可行使本會員合約所規定的權利。  
                <br />
                <br />
                2.在下列情況下得立即暫停、中斷或終止您的會員資格並拒絕提供您租圈的服務，且對使用者所生之任何直接或間接損害，不負任何責任：<br />
&nbsp;<br />
                a.會員違反本會員合約相關規定時，租圈有權終止向該會員提供服務。將在中斷服務時通知會員。但如該會員在被租圈終止提供服務後，再一次直接或間接或以他人名義註冊為該會員，將有權再次單方面終止向該會員提供服務。  
                <br />
                <br />
                b.如租圈透過會員提供的資訊與會員聯繫時，發現會員在註冊時填寫的電子郵箱或電話已不存在，經租圈以其他聯繫方式通知會員更改，而會員在二個工作日內仍未能更正者，露天拍賣有權終止向該會員提供服務。  
                <br />
                <br />
                c.一旦發現會員註冊資料中主要內容是虛假的，權隨時終止向該會員提供服務。<br />
                <br /> d.本會員合約終止或更新時，會員明示不願接受新的服務會員合約。<br />
&nbsp;<br />
                e.租圈相信您的行為可能對您或租圈的會員造成法律上的責任。<br />
                <br />
                &nbsp;f.本服務相關軟硬體設備進行搬遷、更換、升級、保養或維修。<br />
                <br /> 
                g.因第三人之行為、天災、事變或其他不可抗力所致之服務停止或中斷。<br />
                <br />
                h.使用本服務的會員使用流量超過原先網站設定最大量時所致之服務停止或中斷。<br />
&nbsp;<br />
                3.因會員違反法律法規或者違反服務會員合約規定而致使租圈暫停、中斷、終止對會員服務的，對於服務暫停、中斷、終止之前會員交易行為依下列原則處理：  
                <br />
                <br />
                a.服務暫停、中斷、終止之前，會員已經上傳至租圈平台上且尚未成交的物品，有權刪除此項物品的相關資訊。  
                <br />
                <br />
                b.服務暫停、中斷、終止之前，會員已經就其他會員出售的物品作出要約，但交易尚未結束，租圈有權刪除該會員的相關要約。<br />
                <br /> 
                c.服務暫停、中斷、終止之前，會員已經與另一會員就具體交易達成一致共識，租圈可以不刪除該項交易，但有權將會員被暫停、中斷或終止服務的情況通知會員的交易對方。  
                <br />
                </div> 
                <b>七、責任範圍：</b> <br />
                <div style="padding-left :30px;">
                1.會員明確理解和同意，租圈不對因下述任一情況而導致的任何損害賠償承擔責任，包括但不限於利潤、商譽、使用、資料等方面的損失或其他無形損失的損害賠償（無論是否已被告知該等損害賠償的可能性）：  
                <br />
                <br />
                &nbsp;a.使用或未能使用「服務」。<br />
                <br /> b.未經授權的第三方使用、更改會員帳號或個人資料。 c.第三方對「服務」的聲明或關於「服務」的行為。  
                <br />
                <br />
                d.或非因租圈的原因而引起的與「服務」有關的任何其他事宜。  
                <br />
                <br />
                2.會員明確理解並同意，如因其違反有關法律或者本會員合約之規定，使租圈遭受任何損失，受到任何第三方的索賠，或任何主管機關的處罰，會員應對租圈提供補償，包括合理的律師費用。<br />
                <br /> 
                </div> 
                </div>
            </div>
            </asp:View>
        </asp:MultiView>



</div>



</asp:Content>

