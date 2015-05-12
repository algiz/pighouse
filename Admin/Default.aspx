<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="NewFolder1_Default" ValidateRequest ="false"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
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
                <asp:MenuItem Text="會員管理" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="點數管理" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="商品管理" Value="2"></asp:MenuItem>
                <asp:MenuItem Text="客服信箱" Value="3"></asp:MenuItem>
                <asp:MenuItem Text="公告管理" Value="4"></asp:MenuItem>
                <asp:MenuItem Text="配對系統" Value="5"></asp:MenuItem>
                <asp:MenuItem Text="點數購買審核" Value="6"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [member_data] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [member_data] ([account], [password], [name], [nickname], [gender], [birthday], [id_number], [e_mail], [location], [phone], [mobile], [likes], [evaluat], [about_me], [m_point]) VALUES (@account, @password, @name, @nickname, @gender, @birthday, @id_number, @e_mail, @location, @phone, @mobile, @likes, @evaluat, @about_me, @m_point)" 
                    SelectCommand="SELECT * FROM [member_data]" 
                    
                    UpdateCommand="UPDATE member_data SET account = @account, password = @password, name = @name, nickname = @nickname, gender = @gender, birthday = @birthday, id_number = @id_number, e_mail = @e_mail, location = @location, phone = @phone, mobile = @mobile, likes = @likes, evaluat = @evaluat, about_me = @about_me, m_point = @m_point, whether_stop = @whether_stop WHERE (id = @id)">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="account" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="nickname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter DbType="DateTime" Name="birthday" />
                        <asp:Parameter Name="id_number" Type="String" />
                        <asp:Parameter Name="e_mail" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="likes" Type="String" />
                        <asp:Parameter Name="evaluat" Type="Int32" />
                        <asp:Parameter Name="about_me" Type="String" />
                        <asp:Parameter Name="m_point" Type="Int32" />
                        <asp:Parameter Name="whether_stop" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="account" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="nickname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter DbType="DateTime" Name="birthday" />
                        <asp:Parameter Name="id_number" Type="String" />
                        <asp:Parameter Name="e_mail" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="likes" Type="String" />
                        <asp:Parameter Name="evaluat" Type="Int32" />
                        <asp:Parameter Name="about_me" Type="String" />
                        <asp:Parameter Name="m_point" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
                    DataSourceID="SqlDataSource1" CellPadding="4" Font-Size="80%" 
                    ForeColor="#333333" GridLines="None" PageSize="20">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="whether_stop" HeaderText="停權" 
                            SortExpression="whether_stop" />
                        <asp:BoundField DataField="id" HeaderText="會員編號" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                        <asp:BoundField DataField="password" HeaderText="密碼" 
                            SortExpression="password" />
                        <asp:BoundField DataField="name" HeaderText="姓名" 
                            SortExpression="name" />
                        <asp:BoundField DataField="nickname" HeaderText="暱稱" 
                            SortExpression="nickname" />
                        <asp:BoundField DataField="gender" HeaderText="性別" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="birthday" HeaderText="生日" 
                            SortExpression="birthday" />
                        <asp:BoundField DataField="id_number" HeaderText="身分證" 
                            SortExpression="id_number" />
                        <asp:BoundField DataField="e_mail" HeaderText="Email" 
                            SortExpression="e_mail" />
                        <asp:BoundField DataField="location" HeaderText="住址" 
                            SortExpression="location" />
                        <asp:BoundField DataField="phone" HeaderText="電話" 
                            SortExpression="phone" />
                        <asp:BoundField DataField="mobile" HeaderText="手機" SortExpression="mobile" />
                        <asp:BoundField DataField="likes" HeaderText="喜好" 
                            SortExpression="likes" />
                        <asp:BoundField DataField="evaluat" HeaderText="評價" SortExpression="evaluat" />
                        <asp:BoundField DataField="about_me" HeaderText="關於我" 
                            SortExpression="about_me" />
                        <asp:BoundField DataField="m_point" HeaderText="虛擬貨幣" 
                            SortExpression="m_point" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [point_center] WHERE [point_id] = @point_id" 
                    InsertCommand="INSERT INTO [point_center] ([no], [point], [whether_use], [use_time], [po_m_id]) VALUES (@no, @point, @whether_use, @use_time, @po_m_id)" 
                    SelectCommand="SELECT * FROM [point_center]" 
                    UpdateCommand="UPDATE [point_center] SET [no] = @no, [point] = @point, [whether_use] = @whether_use, [use_time] = @use_time, [po_m_id] = @po_m_id WHERE [point_id] = @point_id">
                    <DeleteParameters>
                        <asp:Parameter Name="point_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="no" Type="String" />
                        <asp:Parameter Name="point" Type="Int32" />
                        <asp:Parameter Name="whether_use" Type="Int32" />
                        <asp:Parameter DbType="Datetime" Name="use_time" />
                        <asp:Parameter Name="po_m_id" Type="Int32" />
                        <asp:Parameter Name="point_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="Label1" Name="no" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="point" PropertyName="Text" 
                            Type="Int32" />
                        <asp:Parameter DefaultValue="2" Name="whether_use" Type="Int32" />
                        <asp:Parameter DbType="Datetime" DefaultValue="" Name="use_time" />
                        <asp:Parameter Name="po_m_id" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                要產生幾筆<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("no") %>' 
                    Width="170px"></asp:TextBox>
                <br />
                點數為幾點的?<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="產生點數" />
                <br />
                <br />
                預覽：<br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="point_id" 
                    DataSourceID="SqlDataSource3" Font-Size="80%" ForeColor="#333333" 
                    GridLines="None" PageSize="50">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="point_id" HeaderText="點數編號" 
                            InsertVisible="False" ReadOnly="True" SortExpression="point_id" />
                        <asp:BoundField DataField="no" HeaderText="序號" SortExpression="no" />
                        <asp:BoundField DataField="point" HeaderText="點數" SortExpression="point" />
                        <asp:BoundField DataField="whether_use" HeaderText="是否使用" 
                            SortExpression="whether_use" />
                        <asp:BoundField DataField="use_time" HeaderText="使用時間" 
                            SortExpression="use_time" />
                        <asp:BoundField DataField="po_m_id" HeaderText="使用會員" 
                            SortExpression="po_m_id" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [commodity] WHERE [com_id] = @com_id" 
                    InsertCommand="INSERT INTO [commodity] ([com_id], [com_name], [whether_shelf], [re_member_id], [member_id], [start_day], [total], [end_time], [publish_time], [automatic], [continue_sign], [add_money], [days], [amount], [progress], [pay], [costs], [ex_time], [rent], [merchandise], [decision], [rank]) VALUES (@com_id, @com_name, @whether_shelf, @re_member_id, @member_id, @start_day, @total, @end_time, @publish_time, @automatic, @continue_sign, @add_money, @days, @amount, @progress, @pay, @costs, @ex_time, @rent, @merchandise, @decision, @rank)" 
                    SelectCommand="SELECT [com_id], [com_name], [whether_shelf], [re_member_id], [member_id], [start_day], [total], [end_time], [publish_time], [automatic], [continue_sign], [add_money], [days], [amount], [progress], [pay], [costs], [ex_time], [rent], [merchandise], [decision], [rank] FROM [commodity]" 
                    
                    UpdateCommand="UPDATE [commodity] SET [com_name] = @com_name, [whether_shelf] = @whether_shelf, [re_member_id] = @re_member_id, [member_id] = @member_id, [start_day] = @start_day, [total] = @total, [end_time] = @end_time, [publish_time] = @publish_time, [automatic] = @automatic, [continue_sign] = @continue_sign, [add_money] = @add_money, [days] = @days, [amount] = @amount, [progress] = @progress, [pay] = @pay, [costs] = @costs, [ex_time] = @ex_time, [rent] = @rent, [merchandise] = @merchandise, [decision] = @decision, [rank] = @rank WHERE [com_id] = @com_id">
                    <DeleteParameters>
                        <asp:Parameter Name="com_id" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="com_name" Type="String" />
                        <asp:Parameter Name="whether_shelf" Type="String" />
                        <asp:Parameter Name="re_member_id" Type="Int32" />
                        <asp:Parameter Name="member_id" Type="Int32" />
                        <asp:Parameter Name="start_day" DbType="DateTime" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="end_time" DbType="DateTime" />
                        <asp:Parameter Name="publish_time" DbType="DateTime" />
                        <asp:Parameter Name="automatic" Type="Int32" />
                        <asp:Parameter Name="continue_sign" Type="String" />
                        <asp:Parameter Name="add_money" Type="Int32" />
                        <asp:Parameter Name="days" Type="Int32" />
                        <asp:Parameter Name="amount" Type="Int32" />
                        <asp:Parameter Name="progress" Type="Int32" />
                        <asp:Parameter Name="pay" Type="String" />
                        <asp:Parameter Name="costs" Type="Int32" />
                        <asp:Parameter Name="ex_time" DbType="DateTime" />
                        <asp:Parameter Name="rent" Type="Int32" />
                        <asp:Parameter Name="merchandise" Type="Int32" />
                        <asp:Parameter Name="decision" Type="Int32" />
                        <asp:Parameter Name="rank" Type="String" />
                        <asp:Parameter Name="com_id" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="com_id" Type="String" />
                        <asp:Parameter Name="com_name" Type="String" />
                        <asp:Parameter Name="whether_shelf" Type="String" />
                        <asp:Parameter Name="re_member_id" Type="Int32" />
                        <asp:Parameter Name="member_id" Type="Int32" />
                        <asp:Parameter Name="start_day" DbType="DateTime" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="end_time" DbType="DateTime" />
                        <asp:Parameter Name="publish_time" DbType="DateTime" />
                        <asp:Parameter Name="automatic" Type="Int32" />
                        <asp:Parameter Name="continue_sign" Type="String" />
                        <asp:Parameter Name="add_money" Type="Int32" />
                        <asp:Parameter Name="days" Type="Int32" />
                        <asp:Parameter Name="amount" Type="Int32" />
                        <asp:Parameter Name="progress" Type="Int32" />
                        <asp:Parameter Name="pay" Type="String" />
                        <asp:Parameter Name="costs" Type="Int32" />
                        <asp:Parameter Name="ex_time" DbType="DateTime" />
                        <asp:Parameter Name="rent" Type="Int32" />
                        <asp:Parameter Name="merchandise" Type="Int32" />
                        <asp:Parameter Name="decision" Type="Int32" />
                        <asp:Parameter Name="rank" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="com_id" DataSourceID="SqlDataSource4" Font-Size="80%" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                        <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                            SortExpression="com_id" />
                        <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                            SortExpression="com_name" />
                        <asp:BoundField DataField="whether_shelf" HeaderText="是否上架中" 
                            SortExpression="whether_shelf" />
                        <asp:BoundField DataField="merchandise" HeaderText="交易方式" 
                            SortExpression="merchandise" />
                        <asp:BoundField DataField="decision" HeaderText="下標方式" 
                            SortExpression="decision" />
                        <asp:BoundField DataField="add_money" HeaderText="訂金" 
                            SortExpression="add_money" />
                        <asp:BoundField DataField="rent" HeaderText="租金" SortExpression="rent" />
                        <asp:BoundField DataField="pay" HeaderText="付款方式" SortExpression="pay" />
                        <asp:BoundField DataField="costs" HeaderText="運費" SortExpression="costs" />
                        <asp:BoundField DataField="rank" HeaderText="廣告" SortExpression="rank" />
                        <asp:BoundField DataField="ex_time" HeaderText="租換日期" 
                            SortExpression="ex_time" />
                        <asp:BoundField DataField="progress" HeaderText="交易進度" 
                            SortExpression="progress" />
                        <asp:BoundField DataField="amount" HeaderText="租換數量" 
                            SortExpression="amount" />
                        <asp:BoundField DataField="days" HeaderText="可租天數" SortExpression="days" />
                        <asp:BoundField DataField="continue_sign" HeaderText="是否可續約" 
                            SortExpression="continue_sign" />
                        <asp:BoundField DataField="automatic" HeaderText="自動上架數" 
                            SortExpression="automatic" />
                        <asp:BoundField DataField="publish_time" HeaderText="上架時間" 
                            SortExpression="publish_time" />
                        <asp:BoundField DataField="end_time" HeaderText="下架時間" 
                            SortExpression="end_time" />
                        <asp:BoundField DataField="total" HeaderText="上架商品總數" SortExpression="total" />
                        <asp:BoundField DataField="start_day" HeaderText="租期開始日" 
                            SortExpression="start_day" />
                        <asp:BoundField DataField="member_id" HeaderText="下標會員編號" 
                            SortExpression="member_id" />
                        <asp:BoundField DataField="re_member_id" HeaderText="上架會員編號" 
                            SortExpression="re_member_id" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [message] WHERE [mess_id] = @mess_id" 
                    InsertCommand="INSERT INTO [message] ([title], [mess_data], [content], [isload], [mess_m_id], [re_mes_id]) VALUES (@title, @mess_data, @content, @isload, @mess_m_id, @re_mes_id)" 
                    SelectCommand="SELECT * FROM [message] WHERE ([mess_m_id] = @mess_m_id)" 
                    
                    UpdateCommand="UPDATE [message] SET [title] = @title, [mess_data] = @mess_data, [content] = @content, [isload] = @isload, [mess_m_id] = @mess_m_id, [re_mes_id] = @re_mes_id WHERE [mess_id] = @mess_id">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1021" Name="mess_m_id" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="mess_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter DbType="DateTime" Name="mess_data" />
                        <asp:Parameter Name="content" Type="String" />
                        <asp:Parameter Name="isload" Type="Int32" />
                        <asp:Parameter Name="mess_m_id" Type="Int32" />
                        <asp:Parameter Name="re_mes_id" Type="Int32" />
                        <asp:Parameter Name="mess_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter DbType="DateTime" Name="mess_data" />
                        <asp:Parameter Name="content" Type="String" />
                        <asp:Parameter Name="isload" Type="Int32" />
                        <asp:Parameter Name="mess_m_id" Type="Int32" />
                        <asp:Parameter Name="re_mes_id" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="mess_id" 
                    DataSourceID="SqlDataSource5" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Font-Size="80%">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title" />
                        <asp:BoundField DataField="mess_data" HeaderText="內容" 
                            SortExpression="mess_data" />
                        <asp:BoundField DataField="isload" HeaderText="是否已讀" 
                            SortExpression="isload" />
                        <asp:BoundField DataField="re_mes_id" HeaderText="傳訊會員編號" 
                            SortExpression="re_mes_id" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" 
                    GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="content" HeaderText="內容" 
                            SortExpression="content" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    SelectCommand="SELECT [content] FROM [message] WHERE ([mess_id] = @mess_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView4" Name="mess_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [all_system] WHERE [s_id] = @s_id" 
                    InsertCommand="INSERT INTO all_system(S_title, S_time, S_whether, S_content) VALUES (@S_title, { fn NOW() }, @S_whether, @S_content)" 
                    SelectCommand="SELECT * FROM [all_system]" 
                    
                    UpdateCommand="UPDATE [all_system] SET [S_title] = @S_title, [S_time] = @S_time, [S_whether] = @S_whether, [S_content] = @S_content WHERE [s_id] = @s_id">
                    <DeleteParameters>
                        <asp:Parameter Name="s_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="S_title" Type="String" />
                        <asp:Parameter DbType="DateTime" Name="S_time" />
                        <asp:Parameter Name="S_whether" Type="Int32" />
                        <asp:Parameter Name="S_content" Type="String" />
                        <asp:Parameter Name="s_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="S_title" Type="String" />
                        <asp:Parameter Name="S_whether" Type="Int32" />
                        <asp:Parameter Name="S_content" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="s_id" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                    Font-Size="80%">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="s_id" HeaderText="公告編號" InsertVisible="False" 
                            ReadOnly="True" SortExpression="s_id" />
                        <asp:BoundField DataField="S_title" HeaderText="公告標題" 
                            SortExpression="S_title" />
                        <asp:BoundField DataField="S_time" HeaderText="公告時間" 
                            SortExpression="S_time" />
                        <asp:BoundField DataField="S_whether" HeaderText="首頁/客服" 
                            SortExpression="S_whether" />
                        <asp:BoundField DataField="S_content" HeaderText="內容" 
                            SortExpression="S_content" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                新增公告<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="s_id" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
                    Height="50px" Width="250px" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="s_id" HeaderText="s_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="s_id" />
                        <asp:BoundField DataField="S_title" HeaderText="標題" 
                            SortExpression="S_title" />
                        <asp:BoundField DataField="S_whether" HeaderText="首頁/客服" 
                            SortExpression="S_whether" />
                        <asp:BoundField DataField="S_content" HeaderText="內容" 
                            SortExpression="S_content" />
                        <asp:CommandField ButtonType="Button" InsertText="確定" ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <br />
            </asp:View>
            <asp:View ID="View6" runat="server">
                配對系統
                <asp:Button ID="Button2" runat="server" Text="發送配對訊息" />
                <asp:Button ID="Button3" runat="server" Text="發送喜好訊息" />
            </asp:View>
            <asp:View ID="View7" runat="server">
                <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="bp_id" DataSourceID="SqlDataSource7" Font-Size="80%" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="bp_id" HeaderText="購買編號" InsertVisible="False" 
                            ReadOnly="True" SortExpression="bp_id" />
                        <asp:BoundField DataField="bp_point" HeaderText="購買點數" 
                            SortExpression="bp_point" />
                        <asp:BoundField DataField="bp_member" HeaderText="購買會員" 
                            SortExpression="bp_member" />
                        <asp:BoundField DataField="bp_moneyaccount" HeaderText="匯款帳號後五碼" 
                            SortExpression="bp_moneyaccount" />
                        <asp:BoundField DataField="bp_ok" HeaderText="是否確認過" SortExpression="bp_ok" />
                        <asp:ButtonField ButtonType="Button" CommandName="check_p" Text="確認匯款" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [buypoint] WHERE [bp_id] = @bp_id" 
                    InsertCommand="INSERT INTO [buypoint] ([bp_point], [bp_member], [bp_moneyaccount], [bp_ok]) VALUES (@bp_point, @bp_member, @bp_moneyaccount, @bp_ok)" 
                    SelectCommand="SELECT * FROM [buypoint]" 
                    UpdateCommand="UPDATE [buypoint] SET [bp_point] = @bp_point, [bp_member] = @bp_member, [bp_moneyaccount] = @bp_moneyaccount, [bp_ok] = @bp_ok WHERE [bp_id] = @bp_id">
                    <DeleteParameters>
                        <asp:Parameter Name="bp_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bp_point" Type="Int32" />
                        <asp:Parameter Name="bp_member" Type="Int32" />
                        <asp:Parameter Name="bp_moneyaccount" Type="String" />
                        <asp:Parameter Name="bp_ok" Type="Int32" />
                        <asp:Parameter Name="bp_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bp_point" Type="Int32" />
                        <asp:Parameter Name="bp_member" Type="Int32" />
                        <asp:Parameter Name="bp_moneyaccount" Type="String" />
                        <asp:Parameter Name="bp_ok" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
