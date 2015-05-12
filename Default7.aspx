<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default7.aspx.vb" Inherits="Default7" title=" - 租圈" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    
    .viewframe
    {
        line-height :26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainout">
 <div id="content">

</div>
<div class="product-intro">
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="SELECT * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND com_id=@com_id">
        <SelectParameters>
        <asp:QueryStringParameter Name="com_id" Type="String" QueryStringField="com_id" />
        </SelectParameters> 
        </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Width="900px">
        <ItemTemplate>
        <div class="producttitle">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("com_name")%>' Font-Bold ="true" Font-Size ="120%"></asp:Label>
            </div>
         <div class="productpic">
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>'  Height="15em" />
        <div style="width :200px; border :1px solid #b8b8b8; text-align :left ; margin :10px; font-size :80%;">
        商品編號：<asp:Label ID="Label10" runat="server" Text='<%#Eval("com_id") %>'></asp:Label>
        <hr />
            <asp:LinkButton ID="LinkButton3" runat="server" Text="加入追蹤" 
                onclick="LinkButton3_Click"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton1" runat="server" Text="推薦朋友" 
                onclick="LinkButton1_Click"></asp:LinkButton><br />
            <asp:LinkButton ID="LinkButton2" runat="server" Text="檢舉此商品" 
                onclick="LinkButton2_Click"></asp:LinkButton>
        </div>
        </div>
        <div class="productinfo">
        <div style ="padding :10px"><span>租金：<%#Eval("rent")%>元</span>｜<span>訂金：<asp:Label ID="Label9" runat="server" Text='<%#Eval("add_money")%>'></asp:Label></span></div>
        <hr />
        <div class="userinfo">
        出租/交換者資訊
        <hr />
        出租者：<asp:Label ID="Label12" runat="server" Text='<%#Eval("account")%>'></asp:Label><br />
        評價：<%#Eval("evaluat")%><br />
            <asp:LinkButton ID="LinkButton6" runat="server" Text="所有商品" 
                onclick="LinkButton6_Click"></asp:LinkButton><br />
            <asp:LinkButton ID="LinkButton4" runat="server" Text="關與我" 
                onclick="LinkButton4_Click"></asp:LinkButton><br />
            <asp:LinkButton ID="LinkButton5" runat="server" Text="聯絡我" 
                onclick="LinkButton5_Click"></asp:LinkButton>
        </div>
        <div class="inproinfo">
        <ul>
        <li>租期：<%#Eval("days")%>天</li>
        <li>運費：<%#Eval("costs")%>元</li>
        <li>付款方式：<asp:Label ID="Label2" runat="server" Text='<%#Eval("pay")%>'></asp:Label></li>
        <li>運送方式：<asp:Label ID="Label3" runat="server" Text='<%#Eval("shipping")%>'></asp:Label></li>
        <li>物品所在地：<asp:Label ID="Label5" runat="server" Text='<%# Eval("area") %>'></asp:Label></li>
        <li>是否可以交換：<asp:Label ID="Label4" runat="server" Text='<%#Eval("merchandise")%>'></asp:Label></li>

        </ul>      
       
        </div>
        <div style ="padding :10px"><span>點閱次數：<%#Eval("click_percentage")%></span></div> 
        <div style ="margin:10px;">
            <asp:Button ID="Button1" runat="server" Text="我要租此商品" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="我要交換此商品" 
                onclick="Button2_Click" /></div>
        </div>
        </ItemTemplate>
        
    </asp:FormView>

</div>
<div class="product-intro ">
    <asp:Panel ID="Panel1" runat="server">
    
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
            ForeColor="#990000" BackColor="#FFFBD6" DynamicHorizontalOffset="2" 
            Font-Names="Verdana" Font-Size="1em" StaticSubMenuIndent="10px">
            <StaticSelectedStyle BackColor="#FFCC66" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="產品資訊" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="問與答" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="交換請求" Value="2"></asp:MenuItem>
            </Items>
        </asp:Menu>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                <div class ="viewframe ">
                    <asp:Label ID="Label11" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:FormView>
</asp:View>
        <asp:View ID="View2" runat="server">
   
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                
                
                
                SelectCommand="SELECT U.account, Q.account AS Expr1, Q_and_A.ask_Q, Q_and_A.answer, Q_and_A.ans_time, Q_and_A.ask_time FROM commodity INNER JOIN Q_and_A ON commodity.com_id = Q_and_A.exchan_com_id INNER JOIN member_data AS Q ON Q_and_A.exchan_m_id = Q.id INNER JOIN member_data AS U ON commodity.re_member_id = U.id WHERE (commodity.com_id = @com_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="com_id" Type="String" QueryStringField="com_id" />
                </SelectParameters> 
            </asp:SqlDataSource>

            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                  <li style="background-color: #FFFBD6;color: #333333; list-style-type :none; font-size :80%; margin-left:0px;padding-left:0px; border :dotted; border-color :#ff6600; border-width :2px;  width:800px;">
                        提問：<br />
                        <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />： <asp:Label ID="ask_QLabel" runat="server" Text='<%# Eval("ask_Q") %>' />(<asp:Label ID="ask_timeLabel" runat="server" Text='<%# Eval("ask_time") %>' ForeColor="#FF3300" />)<br />
                        回答：<br />
                        <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' /> ：<asp:Label ID="answerLabel" runat="server" Text='<%# Eval("answer") %>' />(<asp:Label ID="ans_timeLabel" runat="server" Text='<%# Eval("ans_time") %>' ForeColor="#FF3300" />)<br />
                     
                    </li>
                </ItemTemplate>
        
                <EmptyDataTemplate>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">account:
                        <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                        <br />
                        Expr1:
                        <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                        <br />
                        ask_Q:
                        <asp:TextBox ID="ask_QTextBox" runat="server" Text='<%# Bind("ask_Q") %>' />
                        <br />
                        answer:
                        <asp:TextBox ID="answerTextBox" runat="server" Text='<%# Bind("answer") %>' />
                        <br />
                        ans_time:
                        <asp:TextBox ID="ans_timeTextBox" runat="server" 
                            Text='<%# Bind("ans_time") %>' />
                        <br />
                        ask_time:
                        <asp:TextBox ID="ask_timeTextBox" runat="server" 
                            Text='<%# Bind("ask_time") %>' />
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
                        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        </div>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #FFCC66;color: #000080;">account:
                            <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                            <br />
                            Expr1:
                            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                            <br />
                            ask_Q:
                            <asp:TextBox ID="ask_QTextBox" runat="server" Text='<%# Bind("ask_Q") %>' />
                            <br />
                            answer:
                            <asp:TextBox ID="answerTextBox" runat="server" Text='<%# Bind("answer") %>' />
                            <br />
                            ans_time:
                            <asp:TextBox ID="ans_timeTextBox" runat="server" 
                                Text='<%# Bind("ans_time") %>' />
                            <br />
                            ask_time:
                            <asp:TextBox ID="ask_timeTextBox" runat="server" 
                                Text='<%# Bind("ask_time") %>' />
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
                        <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">account:
                            <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                            <br />
                            Expr1:
                            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                            <br />
                            ask_Q:
                            <asp:Label ID="ask_QLabel" runat="server" Text='<%# Eval("ask_Q") %>' />
                            <br />
                            answer:
                            <asp:Label ID="answerLabel" runat="server" Text='<%# Eval("answer") %>' />
                            <br />
                            ans_time:
                            <asp:Label ID="ans_timeLabel" runat="server" Text='<%# Eval("ans_time") %>' />
                            <br />
                            ask_time:
                            <asp:Label ID="ask_timeLabel" runat="server" Text='<%# Eval("ask_time") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
            
                <div style="width:407px; border: 2px solid #c9cfcf; margin :10px auto; text-align :center ;">
                <asp:Button ID="Button3" runat="server" Text="提出問題" />
                    <asp:Panel ID="Panel2" runat="server">
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="ask_id" 
                    DataSourceID="SqlDataSource4" DefaultMode="Insert">
                    <EditItemTemplate>
                        ask_id:
                        <asp:Label ID="ask_idLabel1" runat="server" Text='<%# Eval("ask_id") %>' />
                        <br />
                        ask_Q:
                        <asp:TextBox ID="ask_QTextBox" runat="server" Text='<%# Bind("ask_Q") %>' />
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        提出問題:<br />
                        <asp:TextBox ID="ask_QTextBox" runat="server" Text='<%# Bind("ask_Q") %>' 
                            Height="100" Width="400" TextMode="MultiLine" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="確定" />
&nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="取消" />
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
                    </asp:Panel>
                
                </div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [Q_and_A] WHERE [ask_id] = @ask_id" 
                    InsertCommand="INSERT INTO Q_and_A(ask_Q, ask_time, exchan_com_id, exchan_m_id) VALUES (@ask_Q, { fn NOW() }, @exchan_com_id, @exchan_m_id)" 
                    SelectCommand="SELECT * FROM [Q_and_A] WHERE ([exchan_com_id] = @exchan_com_id)" 
                    
                    UpdateCommand="UPDATE [Q_and_A] SET [ask_Q] = @ask_Q, [answer] = @answer, [ask_time] = @ask_time, [ans_time] = @ans_time, [exchan_com_id] = @exchan_com_id, [exchan_m_id] = @exchan_m_id WHERE [ask_id] = @ask_id">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="exchan_com_id" QueryStringField="com_id" 
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="ask_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ask_Q" Type="String" />
                        <asp:Parameter Name="answer" Type="String" />
                        <asp:Parameter DbType="Date" Name="ask_time" />
                        <asp:Parameter DbType="Date" Name="ans_time" />
                        <asp:Parameter Name="exchan_com_id" Type="String" />
                        <asp:Parameter Name="exchan_m_id" Type="Int32" />
                        <asp:Parameter Name="ask_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ask_Q" Type="String" />
                        <asp:Parameter Name="exchan_com_id" Type="String" />
                        <asp:Parameter Name="exchan_m_id" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                
                SelectCommand="SELECT W.account,M.account,WC.com_name,MC.com_name,exchan_id,exchan_state,exchan_time FROM [exchan_request], commodity WC, commodity MC, member_data W, member_data M WHERE W.id =  WC.re_member_id AND M.id = MC.re_member_id AND WC.com_id =  exchan_request.exchan_com_id AND MC.com_id = exchan_request.re_ex_com_id AND exchan_request.re_ex_com_id = @com_id">
               
                <SelectParameters>
                    <asp:QueryStringParameter Name="com_id" QueryStringField="com_id" />
                </SelectParameters>
                
                </asp:SqlDataSource>
            <div style ="text-align:center ;"><asp:Label ID="Label13" runat="server" Text="尚未有任何交換請求!!" Font-Bold="True" 
                Font-Size="Small" ForeColor="Red"></asp:Label></div>
            <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <li style="background-color: #FFFBD6;color: #333333; margin-left:0px; padding-left:0px; font-size :80%; list-style-type :none; width :800px;">
                    <div class="viewframe">
                        請求編號：<asp:Label ID="Label7" runat="server" Text='<%#Eval("exchan_id") %>'></asp:Label>　　請求日期：<asp:Label ID="Label8" runat="server" Text='<%#Eval("exchan_time") %>'></asp:Label><br />
                        <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' /> 用 <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' /> 換 <asp:Label ID="account1Label" runat="server" Text='<%# Eval("account1") %>' /> 的 <asp:Label ID="com_name1Label" runat="server" Text='<%# Eval("com_name1") %>' /> (狀態：<asp:Label ID="Label6" runat="server" Text='<%#Eval("exchan_state") %>'></asp:Label>)
                   </div>
                    </li>
                </ItemTemplate>
                <EmptyDataTemplate>
                    
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">account:
                        <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                        <br />
                        account1:
                        <asp:TextBox ID="account1TextBox" runat="server" 
                            Text='<%# Bind("account1") %>' />
                        <br />
                        com_name:
                        <asp:TextBox ID="com_nameTextBox" runat="server" 
                            Text='<%# Bind("com_name") %>' />
                        <br />
                        com_name1:
                        <asp:TextBox ID="com_name1TextBox" runat="server" 
                            Text='<%# Bind("com_name1") %>' />
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
                        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        </div>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #FFCC66;color: #000080;">account:
                            <asp:TextBox ID="accountTextBox" runat="server" Text='<%# Bind("account") %>' />
                            <br />
                            account1:
                            <asp:TextBox ID="account1TextBox" runat="server" 
                                Text='<%# Bind("account1") %>' />
                            <br />
                            com_name:
                            <asp:TextBox ID="com_nameTextBox" runat="server" 
                                Text='<%# Bind("com_name") %>' />
                            <br />
                            com_name1:
                            <asp:TextBox ID="com_name1TextBox" runat="server" 
                                Text='<%# Bind("com_name1") %>' />
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
                        <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">account:
                            <asp:Label ID="accountLabel" runat="server" Text='<%# Eval("account") %>' />
                            <br />
                            account1:
                            <asp:Label ID="account1Label" runat="server" Text='<%# Eval("account1") %>' />
                            <br />
                            com_name:
                            <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' />
                            <br />
                            com_name1:
                            <asp:Label ID="com_name1Label" runat="server" Text='<%# Eval("com_name1") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
            </asp:View>
    </asp:MultiView>
    </asp:Panel>
    

</div>
</div>
</div>
</asp:Content>

