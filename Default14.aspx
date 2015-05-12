<%@ Page Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="Default14.aspx.vb" Inherits="Default14" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
#con
{
    width:100%;
}
.topmenu1
{
    
}
        .leftframe
        {
        float:left;
        width :540px;
        margin-left:10px;
        margin-top:10px;
        display:inline;
        }
        .rightframe
        {
        float:right;
        width :291px;
        margin-top:10px;
        display:inline;
        }
        .linframe
        {
        float:left;
        width:262px;    
        }
        .rinframe
        {
            float:right ;
            width:262px;
        }
        .fra
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="con">
<div id="topmenu1">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.9em" 
        ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <StaticSelectedStyle BackColor="#FFCC66" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <Items>
            <asp:MenuItem Text="我的租圈" Value="0"></asp:MenuItem>
            <asp:MenuItem Text="追蹤中的" Value="1"></asp:MenuItem>
            <asp:MenuItem Text="上架中的" Value="2"></asp:MenuItem>
            <asp:MenuItem Text="出租中的" Value="3"></asp:MenuItem>
            <asp:MenuItem Text="正在租的" Value="4"></asp:MenuItem>
            <asp:MenuItem Text="交換請求" Value="5"></asp:MenuItem>
            <asp:MenuItem Text="交易進度" Value="6"></asp:MenuItem>
            <asp:MenuItem Text="站內信箱" Value="7"></asp:MenuItem>
            <asp:MenuItem Text="交易紀錄" Value="10"></asp:MenuItem>
            <asp:MenuItem Text="問與答" Value="11"></asp:MenuItem>
        </Items>
    </asp:Menu>
</div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <div class="leftframe">
<div class="linframe">
<div class="section">上架中的</div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
        Font-Size="Small" DataKeyField="com_id">
        <ItemTemplate>
        <ul>
           <li>
               <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#Eval("com_name") %>' CommandName="Select"></asp:LinkButton></li>
       </ul>    
           
        </ItemTemplate>
    </asp:DataList>
<div class="section">出租中的</div>
  <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" 
        Font-Size="Small" DataKeyField="com_id">
        <ItemTemplate>
        <ul>
           <li>
               <asp:Label ID="Label8" runat="server" Text='<%#Eval("com_name") %>'></asp:Label></li>
       </ul>    
           
        </ItemTemplate>
    </asp:DataList>
<div class="section">承租中的</div>
<asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource4" 
        Font-Size="Small" DataKeyField="com_id">
        <ItemTemplate>
        <ul>
           <li>
               <asp:Label ID="Label7" runat="server" Text='<%#Eval("com_name") %>'></asp:Label>
               &nbsp;</li>
       </ul>    
           
        </ItemTemplate>
    </asp:DataList>
<div class="section">承租方有問題</div>
<asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource8" 
        Font-Size="Small" DataKeyField="com_id">
        <ItemTemplate>
        <ul>
           <li><asp:LinkButton ID="LinkButton2" runat="server" Text='<%#Eval("ask_Q") %>' CommandName="Select"></asp:LinkButton></li>
       </ul>    
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT * FROM [member_data],[commodity],[Q_and_A] WHERE member_data.id = commodity.re_member_id AND commodity.com_id = Q_and_A.exchan_com_id AND answer IS NULL"></asp:SqlDataSource>
<div class="section">發問中</div>
<asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource9" 
        Font-Size="Small" DataKeyField="exchan_com_id">
        <ItemTemplate>
        <ul>
           <li><asp:LinkButton ID="LinkButton2" runat="server" Text='<%#Eval("ask_Q") %>' CommandName="Select"></asp:LinkButton></li>
       </ul>    
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT * FROM [member_data],[Q_and_A] WHERE member_data.id = Q_and_A.exchan_m_id"></asp:SqlDataSource>
</div>
<div class="rinframe">
<div class="section">交換請求</div>
<asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource5" 
        Font-Size="Small">
        <ItemTemplate>
        <ul>
        <li>
            <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
            想交換 <asp:Label ID="com_name1Label" runat="server" 
                Text='<%# Eval("com_name1") %>' />
                </li>
           </ul>
        </ItemTemplate>
    </asp:DataList>
<div class="section">追蹤清單</div>
<asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource1" 
        Font-Size="Small" DataKeyField="com_id">
        <ItemTemplate>
            <ul>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#Eval("com_name") %>' CommandName="Select"></asp:LinkButton>
                </li>
            </ul>
        </ItemTemplate>
    </asp:DataList>
<div class="section">出租方回答了</div>
<asp:SqlDataSource ID="SqlDataSource10" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT * FROM [member_data], [Q_and_A] WHERE member_data.id = Q_and_A.exchan_m_id AND (answer <> '' OR answer <> NULL)"></asp:SqlDataSource>
    
    <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource10" 
        Font-Size="Small" DataKeyField="exchan_com_id">
        <ItemTemplate>
            <ul>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#Eval("answer") %>' CommandName="Select"></asp:LinkButton>
                </li>
            </ul>
        </ItemTemplate>
    </asp:DataList>
<div class="section">未讀悄悄話</div>
        <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource11" 
        Font-Size="Small" DataKeyField="mess_id">
            <ItemTemplate>
                <ul>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("title") %>' 
                            CausesValidation="False" CommandName="Select"></asp:LinkButton>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        
        
        
        SelectCommand="SELECT * FROM [message], member_data M, member_data W WHERE message.re_mes_id = M.id AND (isload = 0 OR isload IS NULL) AND mess_m_id = W.id " 
        DeleteCommand="DELETE FROM message WHERE (mess_id = @mess_id)">
        <DeleteParameters>
            <asp:Parameter Name="mess_id" />
        </DeleteParameters>
    </asp:SqlDataSource>
</div>
</div>
<div class="rightframe">
<div class="section">會員資料</div>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        
        SelectCommand="SELECT * FROM [member_data]">
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource7" 
        Font-Size="Small">
        <ItemTemplate>
            <ul>
                <li>帳號：<asp:Label ID="Label1" runat="server" Text='<%#Eval("account") %>'></asp:Label></li>
                <li>姓名：<asp:Label ID="Label6" runat="server" Text='<%#Eval("name") %>'></asp:Label></li>
                <li>評價：<asp:Label ID="Label2" runat="server" Text='<%#Eval("evaluat") %>'></asp:Label></li>
                <li>虛擬貨幣：<asp:Label ID="Label4" runat="server" Text='<%#Eval("m_point") %>'></asp:Label></li>
                <li>手機：<asp:Label ID="Label5" runat="server" Text='<%#Eval("mobile") %>'></asp:Label></li>
                <li>信箱：<asp:Label ID="Label3" runat="server" Text='<%#Eval("e_mail") %>'></asp:Label> </li>
            </ul>
        </ItemTemplate>
    </asp:FormView>
</div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" SelectCommand="select tra_id,com_id,com_name,A.id,A.account,A.name,B.id,B.account,B.name from commodity, member_data A, member_data B,track 
WHERE commodity.com_id = track.tra_com_id 
AND track.tra_m_id = B.id 
AND A.id = commodity.re_member_id
"></asp:SqlDataSource>
            追蹤中<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                AutoGenerateColumns="False" DataKeyNames="tra_id,com_id,id,id1" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="com_id" HeaderText="商品編號" 
                        ReadOnly="True" SortExpression="com_id" />
                    <asp:HyperLinkField DataNavigateUrlFields="com_id" 
                        DataNavigateUrlFormatString="default7.aspx?com_id={0}" DataTextField="com_name" 
                        HeaderText="商品名稱" />
                    <asp:BoundField DataField="account" HeaderText="租方帳號" 
                        SortExpression="account" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </asp:View>    
    <asp:View ID="View3" runat="server">
    
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
            SelectCommand="SELECT * FROM [member_data], [commodity] WHERE member_data.id = commodity.re_member_id AND whether_shelf = 0"></asp:SqlDataSource>
        上架中<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                    SortExpression="com_id" />
                <asp:HyperLinkField DataNavigateUrlFields="com_id" 
                    DataNavigateUrlFormatString="default7.aspx?com_id={0}" DataTextField="com_name" 
                    HeaderText="商品名稱" />
                <asp:BoundField DataField="publish_time" HeaderText="上架時間" 
                    SortExpression="publish_time" />
                <asp:BoundField DataField="total" HeaderText="上架數量" SortExpression="total" />
                <asp:BoundField DataField="rent" HeaderText="租金" SortExpression="rent" />
                <asp:BoundField DataField="merchandise" HeaderText="交易方式" 
                    SortExpression="merchandise" />
                <asp:BoundField DataField="pay" HeaderText="付款方式" SortExpression="pay" />
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
    <asp:View ID="View4" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
    
            
            
            SelectCommand="SELECT * FROM [member_data], [commodity] WHERE member_data.id = commodity.re_member_id AND whether_shelf = 1 AND member_id IS NOT NULL AND progress &lt;&gt; 9 AND decision = 1">
    </asp:SqlDataSource>
        出租中<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id,com_id" DataSourceID="SqlDataSource3" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                    SortExpression="com_id" />
                <asp:BoundField DataField="id" HeaderText="會員帳號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                    SortExpression="com_name" />
                <asp:BoundField DataField="progress" HeaderText="交易進度" 
                    SortExpression="progress" />
                <asp:BoundField DataField="shipping" HeaderText="運送方式" 
                    SortExpression="shipping" />
                <asp:BoundField DataField="costs" HeaderText="運費" SortExpression="costs" />
                <asp:BoundField DataField="state" HeaderText="商品狀態" SortExpression="state" />
                <asp:BoundField DataField="rent" HeaderText="租金" SortExpression="rent" />
                <asp:BoundField DataField="end_time" HeaderText="結束時間" 
                    SortExpression="end_time" />
                <asp:ButtonField ButtonType="Button" CommandName="pcheck" Text="簽核" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </asp:View>
    <asp:View ID="View5" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server"
    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
    
            
            SelectCommand="SELECT * FROM commodity, member_data WHERE commodity.member_id = member_data.id AND decision = 1 AND whether_shelf = 1 AND progress &lt;&gt; 9"></asp:SqlDataSource>
        承租中<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id,com_id" DataSourceID="SqlDataSource4" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                    SortExpression="com_id" />
                <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                    SortExpression="com_name" />
                <asp:BoundField DataField="account" HeaderText="出租方帳號" 
                    SortExpression="account" />
                <asp:BoundField DataField="start_day" HeaderText="租期期限" 
                    SortExpression="start_day" />
                <asp:BoundField DataField="days" HeaderText="可租天數" SortExpression="days" />
                <asp:BoundField DataField="rent" HeaderText="租金" SortExpression="rent" />
                <asp:BoundField DataField="progress" HeaderText="交易進度" 
                    SortExpression="progress" />
                <asp:ButtonField ButtonType="Button" CommandName="pcheck" Text="簽核" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </asp:View>
    <asp:View ID="View6" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
    
            SelectCommand="SELECT W.account,M.account,WC.com_name,MC.com_name,exchan_id,exchan_state,exchan_time FROM [exchan_request], commodity WC, commodity MC, member_data W, member_data M WHERE W.id =  WC.re_member_id AND M.id = MC.re_member_id AND WC.com_id =  exchan_request.exchan_com_id AND MC.com_id = exchan_request.re_ex_com_id AND exchan_state = 1"></asp:SqlDataSource>
        交換請求<asp:GridView ID="GridView5" runat="server" DataSourceID="SqlDataSource5" 
            AutoGenerateColumns="False" DataKeyNames="exchan_id" 
            style="text-decoration: underline" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="exchan_id" HeaderText="交換編號" InsertVisible="False" 
                    SortExpression="exchan_id" />
                <asp:BoundField DataField="account" HeaderText="交換者帳號" 
                    SortExpression="account" />
                <asp:BoundField DataField="com_name" HeaderText="交換者物品" 
                    SortExpression="com_name" />
                <asp:BoundField DataField="com_name1" HeaderText="您的物品" 
                    SortExpression="com_name1" />
                <asp:BoundField DataField="exchan_state" HeaderText="交換狀態" 
                    SortExpression="exchan_state" />
                <asp:BoundField DataField="exchan_time" HeaderText="請求時間" 
                    SortExpression="exchan_time" />
                <asp:ButtonField ButtonType="Button" CommandName="ac" Text="同意" />
                <asp:ButtonField ButtonType="Button" CommandName="noac" Text="不同意" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </asp:View>
    <asp:View ID="View7" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
            
            
            SelectCommand="SELECT * FROM commodity, member_data WHERE (member_id = id OR re_member_id = id)"></asp:SqlDataSource>
        交易進度<asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource6" DataKeyNames="com_id,id" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                    SortExpression="com_id" />
                <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                    SortExpression="com_name" />
                <asp:BoundField DataField="decision" HeaderText="租賃或交換" 
                    SortExpression="decision" />
                <asp:BoundField DataField="progress" HeaderText="交易進度" 
                    SortExpression="progress" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </asp:View>
        <asp:View ID="View8" runat="server">
            <asp:Button ID="Button8" runat="server" Text="寄信" />
            <asp:GridView ID="GridView7" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="mess_id,id" 
                DataSourceID="SqlDataSource14" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="mess_id" />
                    <asp:BoundField DataField="mess_data" DataFormatString="{0:d}" HeaderText="時間" 
                        SortExpression="mess_data" />
                    <asp:ButtonField CommandName="Select" DataTextField="title" 
                        DataTextFormatString="{0}" HeaderText="標題" />
                    <asp:BoundField DataField="account" HeaderText="作者" SortExpression="account1" />
                    <asp:BoundField DataField="isload" HeaderText="是否已讀" SortExpression="load" />
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                DeleteCommand="DELETE FROM message WHERE (mess_id = @mess_id)" 
                SelectCommand="SELECT * FROM [message], member_data M, member_data W WHERE message.re_mes_id = M.id AND mess_m_id = W.id ">
                <DeleteParameters>
                    <asp:Parameter Name="mess_id" />
                </DeleteParameters>
            </asp:SqlDataSource>
            
        </asp:View>
        <asp:View ID="View9" runat="server">
        
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="mess_id,id,id1" 
                DataSourceID="SqlDataSource12">
                <EditItemTemplate>
                    mess_id:
                    <asp:Label ID="mess_idLabel1" runat="server" Text='<%# Eval("mess_id") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    mess_data:
                    <asp:TextBox ID="mess_dataTextBox" runat="server" 
                        Text='<%# Bind("mess_data") %>' />
                    <br />
                    content:
                    <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                    <br />
                    mess_m_id:
                    <asp:TextBox ID="mess_m_idTextBox" runat="server" 
                        Text='<%# Bind("mess_m_id") %>' />
                    <br />
                    re_mes_id:
                    <asp:TextBox ID="re_mes_idTextBox" runat="server" 
                        Text='<%# Bind("re_mes_id") %>' />
                    <br />
                    isload:
                    <asp:TextBox ID="isloadTextBox" runat="server" Text='<%# Bind("isload") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    account:
                    <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    nickname:
                    <asp:TextBox ID="nicknameTextBox" runat="server" 
                        Text='<%# Bind("nickname") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox" runat="server" 
                        Text='<%# Bind("birthday") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    location:
                    <asp:TextBox ID="locationTextBox" runat="server" 
                        Text='<%# Bind("location") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    mobile:
                    <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                    <br />
                    likes:
                    <asp:TextBox ID="likesTextBox" runat="server" Text='<%# Bind("likes") %>' />
                    <br />
                    evaluat:
                    <asp:TextBox ID="evaluatTextBox" runat="server" Text='<%# Bind("evaluat") %>' />
                    <br />
                    about_me:
                    <asp:TextBox ID="about_meTextBox" runat="server" 
                        Text='<%# Bind("about_me") %>' />
                    <br />
                    m_point:
                    <asp:TextBox ID="m_pointTextBox" runat="server" Text='<%# Bind("m_point") %>' />
                    <br />
                    id1:
                    <asp:Label ID="id1Label1" runat="server" Text='<%# Eval("id1") %>' />
                    <br />
                    account1:
                    <asp:TextBox ID="account1TextBox" runat="server" 
                        Text='<%# Bind("account1") %>' />
                    <br />
                    password1:
                    <asp:TextBox ID="password1TextBox" runat="server" 
                        Text='<%# Bind("password1") %>' />
                    <br />
                    name1:
                    <asp:TextBox ID="name1TextBox" runat="server" Text='<%# Bind("name1") %>' />
                    <br />
                    nickname1:
                    <asp:TextBox ID="nickname1TextBox" runat="server" 
                        Text='<%# Bind("nickname1") %>' />
                    <br />
                    gender1:
                    <asp:TextBox ID="gender1TextBox" runat="server" Text='<%# Bind("gender1") %>' />
                    <br />
                    birthday1:
                    <asp:TextBox ID="birthday1TextBox" runat="server" 
                        Text='<%# Bind("birthday1") %>' />
                    <br />
                    id_number1:
                    <asp:TextBox ID="id_number1TextBox" runat="server" 
                        Text='<%# Bind("id_number1") %>' />
                    <br />
                    e_mail1:
                    <asp:TextBox ID="e_mail1TextBox" runat="server" Text='<%# Bind("e_mail1") %>' />
                    <br />
                    location1:
                    <asp:TextBox ID="location1TextBox" runat="server" 
                        Text='<%# Bind("location1") %>' />
                    <br />
                    phone1:
                    <asp:TextBox ID="phone1TextBox" runat="server" Text='<%# Bind("phone1") %>' />
                    <br />
                    mobile1:
                    <asp:TextBox ID="mobile1TextBox" runat="server" Text='<%# Bind("mobile1") %>' />
                    <br />
                    likes1:
                    <asp:TextBox ID="likes1TextBox" runat="server" Text='<%# Bind("likes1") %>' />
                    <br />
                    evaluat1:
                    <asp:TextBox ID="evaluat1TextBox" runat="server" 
                        Text='<%# Bind("evaluat1") %>' />
                    <br />
                    about_me1:
                    <asp:TextBox ID="about_me1TextBox" runat="server" 
                        Text='<%# Bind("about_me1") %>' />
                    <br />
                    m_point1:
                    <asp:TextBox ID="m_point1TextBox" runat="server" 
                        Text='<%# Bind("m_point1") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    title:
                    <asp:TextBox ID="titleTextBox0" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    mess_data:
                    <asp:TextBox ID="mess_dataTextBox0" runat="server" 
                        Text='<%# Bind("mess_data") %>' />
                    <br />
                    content:
                    <asp:TextBox ID="contentTextBox0" runat="server" 
                        Text='<%# Bind("content") %>' />
                    <br />
                    mess_m_id:
                    <asp:TextBox ID="mess_m_idTextBox0" runat="server" 
                        Text='<%# Bind("mess_m_id") %>' />
                    <br />
                    re_mes_id:
                    <asp:TextBox ID="re_mes_idTextBox0" runat="server" 
                        Text='<%# Bind("re_mes_id") %>' />
                    <br />
                    isload:
                    <asp:TextBox ID="isloadTextBox0" runat="server" Text='<%# Bind("isload") %>' />
                    <br />
                    account:
                    <asp:TextBox ID="accountTextBox0" runat="server" 
                        Text='<%# Bind("account") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox0" runat="server" 
                        Text='<%# Bind("password") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox0" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    nickname:
                    <asp:TextBox ID="nicknameTextBox0" runat="server" 
                        Text='<%# Bind("nickname") %>' />
                    <br />
                    gender:
                    <asp:TextBox ID="genderTextBox0" runat="server" Text='<%# Bind("gender") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox0" runat="server" 
                        Text='<%# Bind("birthday") %>' />
                    <br />
                    id_number:
                    <asp:TextBox ID="id_numberTextBox0" runat="server" 
                        Text='<%# Bind("id_number") %>' />
                    <br />
                    e_mail:
                    <asp:TextBox ID="e_mailTextBox0" runat="server" Text='<%# Bind("e_mail") %>' />
                    <br />
                    location:
                    <asp:TextBox ID="locationTextBox0" runat="server" 
                        Text='<%# Bind("location") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox0" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    mobile:
                    <asp:TextBox ID="mobileTextBox0" runat="server" Text='<%# Bind("mobile") %>' />
                    <br />
                    likes:
                    <asp:TextBox ID="likesTextBox0" runat="server" Text='<%# Bind("likes") %>' />
                    <br />
                    evaluat:
                    <asp:TextBox ID="evaluatTextBox0" runat="server" 
                        Text='<%# Bind("evaluat") %>' />
                    <br />
                    about_me:
                    <asp:TextBox ID="about_meTextBox0" runat="server" 
                        Text='<%# Bind("about_me") %>' />
                    <br />
                    m_point:
                    <asp:TextBox ID="m_pointTextBox0" runat="server" 
                        Text='<%# Bind("m_point") %>' />
                    <br />
                    account1:
                    <asp:TextBox ID="account1TextBox0" runat="server" 
                        Text='<%# Bind("account1") %>' />
                    <br />
                    password1:
                    <asp:TextBox ID="password1TextBox0" runat="server" 
                        Text='<%# Bind("password1") %>' />
                    <br />
                    name1:
                    <asp:TextBox ID="name1TextBox0" runat="server" Text='<%# Bind("name1") %>' />
                    <br />
                    nickname1:
                    <asp:TextBox ID="nickname1TextBox0" runat="server" 
                        Text='<%# Bind("nickname1") %>' />
                    <br />
                    gender1:
                    <asp:TextBox ID="gender1TextBox0" runat="server" 
                        Text='<%# Bind("gender1") %>' />
                    <br />
                    birthday1:
                    <asp:TextBox ID="birthday1TextBox0" runat="server" 
                        Text='<%# Bind("birthday1") %>' />
                    <br />
                    id_number1:
                    <asp:TextBox ID="id_number1TextBox0" runat="server" 
                        Text='<%# Bind("id_number1") %>' />
                    <br />
                    e_mail1:
                    <asp:TextBox ID="e_mail1TextBox0" runat="server" 
                        Text='<%# Bind("e_mail1") %>' />
                    <br />
                    location1:
                    <asp:TextBox ID="location1TextBox0" runat="server" 
                        Text='<%# Bind("location1") %>' />
                    <br />
                    phone1:
                    <asp:TextBox ID="phone1TextBox0" runat="server" Text='<%# Bind("phone1") %>' />
                    <br />
                    mobile1:
                    <asp:TextBox ID="mobile1TextBox0" runat="server" 
                        Text='<%# Bind("mobile1") %>' />
                    <br />
                    likes1:
                    <asp:TextBox ID="likes1TextBox0" runat="server" Text='<%# Bind("likes1") %>' />
                    <br />
                    evaluat1:
                    <asp:TextBox ID="evaluat1TextBox0" runat="server" 
                        Text='<%# Bind("evaluat1") %>' />
                    <br />
                    about_me1:
                    <asp:TextBox ID="about_me1TextBox0" runat="server" 
                        Text='<%# Bind("about_me1") %>' />
                    <br />
                    m_point1:
                    <asp:TextBox ID="m_point1TextBox0" runat="server" 
                        Text='<%# Bind("m_point1") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="Button4" runat="server" CausesValidation="False" Text="上一封" 
                                    onclick="Button4_Click" />
                                <asp:Button ID="Button3" runat="server" CausesValidation="False" Text="下一封" 
                                    onclick="Button3_Click" />
                                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="刪除" />
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" Text="回信" 
                                    onclick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="回信件列表" 
                                    onclick="Button2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                標題： 
                                <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                                <br />
                                時間： 
                                <asp:Label ID="mess_dataLabel" runat="server" Text='<%# Bind("mess_data") %>' />
                                <br />
                                作者： 
                                <asp:Label ID="accountLabel0" runat="server" Text='<%# Bind("account") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="contentLabel" runat="server" Text='<%# Bind("content") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                DeleteCommand="DELETE FROM [message] WHERE [mess_id] = @mess_id" 
                InsertCommand="INSERT INTO [message] ([title], [re_mes_id], [mess_data], [content],[re_mes_id]) VALUES (@title, @re_mes_id, @mess_data, @content,@re_mes_id)" 
                SelectCommand="SELECT * FROM [message], member_data M, member_data W WHERE message.re_mes_id = M.id AND mess_m_id = W.id AND ([mess_id] = @mess_id)" 
                UpdateCommand="UPDATE [message] SET [title] = @title, [re_mes_id] = @re_mes_id, [mess_data] = @mess_data, [content] = @content WHERE [mess_id] = @mess_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView7" Name="mess_id" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="mess_id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="re_mes_id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="mess_data" />
                    <asp:Parameter Name="content" Type="String" />
                    <asp:Parameter Name="mess_id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="re_mes_id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="mess_data" />
                    <asp:Parameter Name="content" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        
        </asp:View>
        <asp:View ID="View10" runat="server">
        <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                                    DeleteCommand="DELETE FROM [message] WHERE [mess_id] = @mess_id" 
                                    InsertCommand="INSERT INTO [message] ([title], [mess_data], [content], [mess_m_id], [re_mes_id], [isload]) VALUES (@title, @mess_data, @content, @mess_m_id, @re_mes_id, @isload)" 
                                    SelectCommand="SELECT * FROM [message]" 
                                    UpdateCommand="UPDATE [message] SET [title] = @title, [mess_data] = @mess_data, [content] = @content, [mess_m_id] = @mess_m_id, [re_mes_id] = @re_mes_id, [isload] = @isload WHERE [mess_id] = @mess_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="mess_id" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="title" Type="String" />
                                        <asp:Parameter DbType="Date" Name="mess_data" />
                                        <asp:Parameter Name="content" Type="String" />
                                        <asp:Parameter Name="mess_m_id" Type="Int32" />
                                        <asp:Parameter Name="re_mes_id" Type="Int32" />
                                        <asp:Parameter Name="isload" Type="Int32" />
                                        <asp:Parameter Name="mess_id" Type="Int32" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="TextBox2" Name="title" PropertyName="Text" 
                                            Type="String" />
                                        <asp:ControlParameter ControlID="TextBox3" Name="content" PropertyName="Text" 
                                            Type="String" />
                                        <asp:Parameter DbType="Datetime" Name="mess_data" />
                                        <asp:Parameter Name="re_mes_id" Type="Int32" />
                                        <asp:Parameter Name="mess_m_id" />
                                        <asp:Parameter Name="isload" Type="Int32" DefaultValue="0" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
             <table>
                        <tr>
                            <td>
                                收件者： 
                                <asp:TextBox ID="TextBox1" runat="server" Width="150"></asp:TextBox>
                                
                                <br />
                                標　題： 
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("title") %>' Width="300"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("content") %>' TextMode="MultiLine" Height="300" Width="400"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        <td>
                            <asp:Button ID="Button5" runat="server" Text="寄出" />
                            <asp:Button ID="Button6" runat="server" Text="重寫" />
                            <asp:Button ID="Button7" runat="server" Text="取消" />
                        </td>
                        </tr>
                    </table>
        </asp:View>
        <asp:View ID="View11" runat="server">
        交易紀錄<br />
        <asp:SqlDataSource ID="SqlDataSource15" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM commodity,member_data M,member_data W WHERE re_member_id = M.id AND whether_shelf = 1 AND member_id = W.id"></asp:SqlDataSource>
                上架成功交易記錄
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="com_id,id,id1" DataSourceID="SqlDataSource15" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                        SortExpression="com_id" />
                    <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                        SortExpression="com_name" />
                    <asp:BoundField DataField="decision" HeaderText="交易成功方式" 
                        SortExpression="decision" />
                    <asp:BoundField DataField="account1" HeaderText="租賃方帳號/交換方帳號" 
                        SortExpression="account1" />
                    <asp:ButtonField ButtonType="Button" CommandName="aeva" Text="給予正評" />
                    <asp:ButtonField ButtonType="Button" CommandName="deva" Text="給予負評" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                購買成功交易記錄<asp:GridView ID="GridView9" runat="server" 
                AutoGenerateColumns="False" DataKeyNames="com_id,id,id1" 
                DataSourceID="SqlDataSource16" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="com_id" HeaderText="商品編號" ReadOnly="True" 
                        SortExpression="com_id" />
                    <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                        SortExpression="com_name" />
                    <asp:BoundField DataField="decision" HeaderText="交易成功方式" 
                        SortExpression="decision" />
                    <asp:BoundField DataField="account" HeaderText="物主帳號" 
                        SortExpression="account" />
                    <asp:ButtonField ButtonType="Button" CommandName="aeva" Text="給予正評" />
                    <asp:ButtonField ButtonType="Button" CommandName="deva" Text="給予負評" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource16" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM commodity,member_data M,member_data W WHERE  re_member_id = M.id AND whether_shelf = 1 AND member_id = W.id"></asp:SqlDataSource>
                
        </asp:View>
        <asp:View ID="View12" runat="server">
            問與答<asp:SqlDataSource ID="SqlDataSource17" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM commodity, member_data U, member_data Q, Q_and_A WHERE commodity.com_id = Q_and_A.exchan_com_id AND Q_and_A.exchan_m_id = Q.id AND commodity.re_member_id = U.id">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ask_id" DataSourceID="SqlDataSource17" 
                AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="com_id" HeaderText="商品編號" 
                        SortExpression="com_id" ReadOnly="True" />
                    <asp:BoundField DataField="com_name" HeaderText="商品名稱" 
                        SortExpression="com_name" />
                    <asp:BoundField DataField="account1" HeaderText="提問會員" 
                        SortExpression="account1" />
                    <asp:BoundField DataField="ask_Q" HeaderText="問題" SortExpression="ask_Q" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="回答" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="ask_id" 
                DataSourceID="SqlDataSource18" DefaultMode="Edit">
                <EditItemTemplate>
                    問題:
                    <asp:TextBox ID="ask_QTextBox" runat="server" Text='<%# Bind("ask_Q") %>' ReadOnly="True" Width="300" />
                    <br />
                    提問時間:&nbsp;<asp:TextBox ID="ask_timeTextBox" runat="server" 
                        Text='<%# Bind("ask_time") %>' Visible="True" />                    
                    <asp:TextBox ID="ans_timeTextBox" runat="server" 
                        Text='<%# Bind("ans_time") %>' Visible="False" />
                        <br />
                      回答:
                    <br />
                    <asp:TextBox ID="answerTextBox" runat="server" 
                        Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400" Height="300" />
                        <br />
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ask_Q:
                    <asp:TextBox ID="ask_QTextBox" runat="server" 
                        Text='<%# Bind("ask_Q") %>' />
                    <br />
                    answer:
                    <asp:TextBox ID="answerTextBox" runat="server" Text='<%# Bind("answer") %>' />
                    <br />
                    ask_time:
                    <asp:TextBox ID="ask_timeTextBox" runat="server" 
                        Text='<%# Bind("ask_time") %>' />
                    <br />
                    ans_time:
                    <asp:TextBox ID="ans_timeTextBox" runat="server" 
                        Text='<%# Bind("ans_time") %>' />
                    <br />
                    exchan_com_id:
                    <asp:TextBox ID="exchan_com_idTextBox" runat="server" 
                        Text='<%# Bind("exchan_com_id") %>' />
                    <br />
                    exchan_m_id:
                    <asp:TextBox ID="exchan_m_idTextBox" runat="server" 
                        Text='<%# Bind("exchan_m_id") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ask_id:
                    <asp:Label ID="ask_idLabel" runat="server" Text='<%# Eval("ask_id") %>' />
                    <br />
                    ask_Q:
                    <asp:Label ID="ask_QLabel" runat="server" Text='<%# Bind("ask_Q") %>' />
                    <br />
                    answer:
                    <asp:Label ID="answerLabel" runat="server" Text='<%# Bind("answer") %>' />
                    <br />
                    ask_time:
                    <asp:Label ID="ask_timeLabel" runat="server" Text='<%# Bind("ask_time") %>' />
                    <br />
                    ans_time:
                    <asp:Label ID="ans_timeLabel" runat="server" Text='<%# Bind("ans_time") %>' />
                    <br />
                    exchan_com_id:
                    <asp:Label ID="exchan_com_idLabel" runat="server" 
                        Text='<%# Bind("exchan_com_id") %>' />
                    <br />
                    exchan_m_id:
                    <asp:Label ID="exchan_m_idLabel" runat="server" 
                        Text='<%# Bind("exchan_m_id") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="新增" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource18" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Q_and_A] WHERE [ask_id] = @ask_id" 
                InsertCommand="INSERT INTO [Q_and_A] ([ask_Q], [answer], [ask_time], [ans_time], [exchan_com_id], [exchan_m_id]) VALUES (@ask_Q, @answer, @ask_time, @ans_time, @exchan_com_id, @exchan_m_id)" 
                SelectCommand="SELECT * FROM [Q_and_A] WHERE ([ask_id] = @ask_id)" 
                
                UpdateCommand="UPDATE Q_and_A SET ask_Q = @ask_Q, answer = @answer, ask_time = @ask_time, ans_time = { fn NOW() } WHERE (ask_id = @ask_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView10" Name="ask_id" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="ask_id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ask_Q" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter DbType="Datetime" Name="ask_time" />
                    <asp:Parameter Name="ask_id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="ask_Q" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter DbType="Date" Name="ask_time" />
                    <asp:Parameter DbType="Date" Name="ans_time" />
                    <asp:Parameter Name="exchan_com_id" />
                    <asp:Parameter Name="exchan_m_id" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:View>
    </asp:MultiView>

</div>

</asp:Content>

