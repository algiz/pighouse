<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" title="租圈" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" >
.wright
{
    width:100px;
    float:right;
}
.wright h2
{
    margin:0;
    padding:0;
}
.join
{
    margin-top:10px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <div id="mainOut">
                 <!-- 最新上架 Select -->
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                        
                       
                                SelectCommand="SELECT top 5 * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND whether_shelf = 0 ORDER BY publish_time DESC">
                    
                    </asp:SqlDataSource>
                <div id="left">
                <div class="section">
                最新上架
                </div>
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                                DataSourceID="SqlDataSource1" RepeatColumns="5">
                 <ItemTemplate>
                    <table cellpadding="0" width ="100%">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="100px" Width="100px" />
                                </asp:HyperLink>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink12" runat="server" Text='<%#Eval("com_name") %>' Font-Size="80%" NavigateUrl ='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'></asp:HyperLink>
                                <br />
                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
                    </asp:DataList>
                    
                </div>
                
                 <div id="right">
                 <div class="section">會員登入</div>
                 
                  <!--登入頁面-->
                     <asp:LoginView ID="LoginView1" runat="server">
                     <AnonymousTemplate >
                                      <div><h2>免費註冊享受租圈服務</h2></div>
                 <div class="loginlist">
                 <h2><a href ="regfrom.aspx">加入租圈會員</a></h2> 
                 <asp:LoginStatus ID="LoginStatus1" runat="server" LoginImageUrl="~/images/dlogin.png" />
                     
                 </div>
                 <div class="wright">
                 <h2><a href ="Default14.aspx">我的租圈</a></h2>
                 <h2><a href ="Default9.aspx">我要上架</a></h2>
                 <h2>
                     <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">我要儲值</asp:LinkButton>
                     </h2>
                 </div>

                 <div class="wrapper2">
                 <ul>
                 
                 <li><asp:Image ID="Image5" runat="server" ImageUrl="~/images/ICON.gif" />
                     <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">交易記錄</asp:LinkButton></li>
                 <li><asp:Image ID="Image4" runat="server" ImageUrl="~/images/ICON.gif" />
                     <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">儲值記錄</asp:LinkButton>
                     </li>
                 </ul>
                 </div>
                     </AnonymousTemplate>
                     <LoggedInTemplate>
                 <div><h2><asp:LoginName ID="LoginName1" runat="server" />
                     &nbsp;&nbsp; 歡迎回來!</h2></div>
                 <div class="loginlist">
                 
                 <asp:LoginStatus ID="LoginStatus1" runat="server" 
                         LogoutImageUrl="~/images/dlogout.png" />
                     
                 </div>
                 <div class="wright">
                 <h2><a href ="Default14.aspx">我的租圈</a></h2>
                 <h2><a href ="Default9.aspx">我要上架</a></h2>
                 <h2>
                     <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">我要儲值</asp:LinkButton>
                     </h2>
                 </div>

                 <div class="wrapper2">
                 <ul>
                 
                 <li><asp:Image ID="Image5" runat="server" ImageUrl="~/images/ICON.gif" />
                     <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">交易記錄</asp:LinkButton></li>
                 <li><asp:Image ID="Image4" runat="server" ImageUrl="~/images/ICON.gif" />
                     <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">儲值記錄</asp:LinkButton>
                     </li>
                 </ul>
                 </div>
                     </LoggedInTemplate>
                     </asp:LoginView>

                 </div>
                    
                
                <div id="center">
                  <div class="section">熱門商品</div>
                  <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" 
                                DataSourceID="SqlDataSource2">
                                   <ItemTemplate>
                <table cellpadding="0" width ="100%">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="100px" Width="100px" />
                                </asp:HyperLink>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink12" runat="server" Text='<%#Eval("com_name") %>' Font-Size="80%" NavigateUrl ='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'></asp:HyperLink>
                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
                      </asp:DataList>
                      <!-- 熱門 Select -->
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                        
                        SelectCommand="SELECT top 5 * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND whether_shelf = 0 ORDER BY [click_percentage] DESC">

                    </asp:SqlDataSource>
                    </div>
                 <div id="notice_list">
                 <div class="section">最新公告</div>
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource6">
                                <ItemTemplate>
                                
                                    <span style=" font-size :80%; text-align :left ; font-weight :bold ;">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("S_time") %>' ForeColor="#669900"></asp:Label>  
                                    <br />    
                                     　<asp:Image ID="Image2" runat="server" ImageUrl="images/ICON.gif" />
                                        <asp:HyperLink ID="HyperLink13" runat="server" Text ='<%# Eval("S_title") %>'></asp:HyperLink>   
                                        <br />    
                                    </span>
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
                     <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                                
                         SelectCommand="SELECT TOP 4 * FROM [all_system] WHERE ([S_whether] = @S_whether) ORDER BY S_time DESC">
                         <SelectParameters>
                             <asp:Parameter DefaultValue="0" Name="S_whether" Type="Int32" />
                         </SelectParameters>
                            </asp:SqlDataSource>
                 </div>
                 <div id="hotexchange">
                 <div class="section">最新交換</div>
                                   <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" 
                                DataSourceID="SqlDataSource3">
                                   <ItemTemplate>
                <table cellpadding="0" width ="100%">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="100px" Width="100px" />
                                </asp:HyperLink>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                                <asp:HyperLink ID="HyperLink12" runat="server" Text='<%#Eval("com_name") %>' Font-Size="80%" NavigateUrl ='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'></asp:HyperLink>

                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
                      </asp:DataList>
                      <!-- 最新交換 Select -->
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                        
                         SelectCommand="SELECT top 5 * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND whether_shelf = 0 AND merchandise=3 ORDER BY publish_time DESC">

                            </asp:SqlDataSource>
                 </div>
                 <div class="piclink">
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/newuser.jpg" />
                    </div>
      <div class="piclink">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/qa.jpg" />
                    </div>
                  <div id="newsuccess">
                 <div class="section">最新成功交換</div>
                                   <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" 
                                DataSourceID="SqlDataSource4">
                                   <ItemTemplate>
                <table cellpadding="0" width ="100%">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="100px" Width="100px" />
                                </asp:HyperLink>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                                <asp:HyperLink ID="HyperLink12" runat="server" Text='<%#Eval("com_name") %>' Font-Size="80%" NavigateUrl ='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'></asp:HyperLink>
                                <br />
                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
                      </asp:DataList>
                       <!-- 最新成功交換 Select -->
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                          SelectCommand="SELECT TOP 5 * FROM [commodity], [member_data] WHERE commodity.member_id = member_data.id AND whether_shelf = 1 AND  decision = 2  ORDER BY publish_time DESC">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="whether_shelf" Type="String" />
                            <asp:Parameter DefaultValue="3" Name="merchandise" Type="Int32" />
                        </SelectParameters>
                            </asp:SqlDataSource>
                 </div>
                 <div id="ranking">
                 </div>
                 <div id="seekitem">
                 <div class="section">最新徵求物品</div>
                                   <asp:DataList ID="DataList5" runat="server" RepeatDirection="Horizontal" 
                                DataSourceID="SqlDataSource5">
                                   <ItemTemplate>
                <table cellpadding="0" width ="100%">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="100px" Width="100px" />
                                </asp:HyperLink>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                                <asp:HyperLink ID="HyperLink12" runat="server" Text='<%#Eval("com_name") %>' Font-Size="80%" NavigateUrl ='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'></asp:HyperLink>
                                <br />
                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
                      </asp:DataList>
                    <!-- 最新徵求物品 Select  未做!! -->
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                        
                                SelectCommand="SELECT top 5 * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND whether_shelf = 0 AND (what_exchange <> '' OR what_exchange IS NOT NULL) ORDER BY [publish_time] DESC"></asp:SqlDataSource>
                 </div>
      
                 <div id="c_top">
                 <div class="section">分類目錄</div>
<div class ="list">
<h2>
    <asp:HyperLink ID="HyperLink2" runat="server" Text ="書籍雜誌" 
        NavigateUrl="~/Default6.aspx?layer=001"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00101">商業理財</a></li>
<li><a href ="Default6.aspx?layer=00102">文學小說</a></li>
<li><a href ="Default6.aspx?layer=00112">漫畫</a></li>
<li><a href ="Default6.aspx?layer=00104">電腦語言</a></li>
<li><a href ="Default6.aspx?layer=00113">參考書/考試用書</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink3" runat="server" Text ="音樂影片" 
        NavigateUrl="~/Default6.aspx?layer=002"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00201">CD</a></li>
<li><a href ="Default6.aspx?layer=00202">VCD</a></li>
<li><a href ="Default6.aspx?layer=00203">DVD</a></li>
<li><a href ="Default6.aspx?layer=00204">樂器/樂譜</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink4" runat="server" Text ="3C電子" 
        NavigateUrl="~/Default6.aspx?layer=003"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00301">電腦與周邊設備</a></li>
<li><a href ="Default6.aspx?layer=00302">相機/攝影機</a></li>
<li><a href ="Default6.aspx?layer=00304">MP3</a></li>
<li><a href ="Default6.aspx?layer=00305">電玩</a></li>
<li><a href ="Default6.aspx?layer=00303">手機/通訊設備</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink5" runat="server" Text ="家電與家具" 
        NavigateUrl="~/Default6.aspx?layer=005"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00501">影視家電</a></li>
<li><a href ="Default6.aspx?layer=00502">廚房家電</a></li>
<li><a href ="Default6.aspx?layer=00505">家具</a></li>
<li><a href ="Default6.aspx?layer=00504">生活家電</a></li>
<li><a href ="Default6.aspx?layer=00503">健康/美容家電</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink6" runat="server" Text ="服飾/精品/包/鞋" 
        NavigateUrl="~/Default6.aspx?layer=006"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00601">女性用品</a></li>
<li><a href ="Default6.aspx?layer=00602">男性用品</a></li>
<li><a href ="Default6.aspx?layer=00603">精品</a></li>
<li><a href ="Default6.aspx?layer=00604">鐘錶/眼鏡</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink7" runat="server" Text ="日常/外出設備" 
        NavigateUrl="~/Default6.aspx?layer=007"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00702">汽車</a></li>
<li><a href ="Default6.aspx?layer=00706">機車</a></li>
<li><a href ="Default6.aspx?layer=00704">自行車</a></li>
<li><a href ="Default6.aspx?layer=00705">周邊設備</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink8" runat="server" Text ="寵物用品" 
        NavigateUrl="~/Default6.aspx?layer=008"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00801">貓用品</a></li>
<li><a href ="Default6.aspx?layer=00802">狗用品</a></li>
<li><a href ="Default6.aspx?layer=00803">魚用品</a></li>
<li><a href ="Default6.aspx?layer=00804">其他用品</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink9" runat="server" Text ="不動產" 
        NavigateUrl="~/Default6.aspx?layer=009"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00901">房屋</a></li>
<li><a href ="Default6.aspx?layer=00902">土地</a></li>
<li><a href ="Default6.aspx?layer=00903">車位</a></li>
<li><a href ="Default6.aspx?layer=00904">店面</a></li>
</ul>
</div>
<div class ="list">
<h2><asp:HyperLink ID="HyperLink10" runat="server" Text ="辦公用品" 
        NavigateUrl="~/Default6.aspx?layer=004"></asp:HyperLink></h2>
<ul>
<li><a href ="Default6.aspx?layer=00101">事務類</a></li>
<li><a href ="Default6.aspx?layer=00102">辦公家具</a></li>
<li><a href ="Default6.aspx?layer=00103">其它用品</a></li>
</ul>
<div style ="text-align :right ">
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold ="True" Font-Size="80%" 
        NavigateUrl="~/Default6.aspx">More...</asp:HyperLink>
    </div>
</div>

                </div>

                    </div>
</asp:Content>


