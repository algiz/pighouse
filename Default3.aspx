<%@ Page Language="VB" MasterPageFile="~/MasterPage3.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default6" title="以物易物 - 租圈" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css" >
    .advertising
    {
    width:820px;
    margin-top:10px;
    margin-left:10px;
    }
    .listviewstyle
    {
        margin:10px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainout">
<div class="category" style=" background-image:url(images/categorybottom.png); background-repeat:no-repeat; background-position :bottom left ;">
<div style=" background-image:url(images/categorybg.png); background-repeat:no-repeat ; background-position :top left ;">
<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
     ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
     
        SelectCommand="SELECT ca_id, layer, ca_name FROM category WHERE (ca_id like @Param1 + '__')">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Param1" 
                QueryStringField="layer" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" 
        GroupItemCount="6">
        <EmptyItemTemplate>
            <td id="Td2" runat="server" />
            </EmptyItemTemplate>
            <ItemTemplate>
                <td id="Td3" runat="server" style="">
                    <div class="listviewstyle">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default3.aspx?layer=" & Eval("ca_id") %>' Text='<%#Eval("ca_name")%>' Font-Size="80%" Font-Bold="True"></asp:HyperLink>
                    </div>
                </td>
            </ItemTemplate>

            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">

                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td id="Td4" runat="server" style="">
                    <asp:TextBox ID="ca_nameTextBox" runat="server" Text='<%# Bind("ca_name") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td5" runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td6" runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <td id="Td7" runat="server" style="">
                    ca_name:
                    <asp:TextBox ID="ca_nameTextBox" runat="server" Text='<%# Bind("ca_name") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <SelectedItemTemplate>
                <td id="Td14" runat="server" style="">
                    ca_name:
                    <asp:Label ID="ca_nameLabel" runat="server" Text='<%# Eval("ca_name") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
     </div>
     <br />
</div>

<div class="advertising">
<div class="advertisingbottom" style ="padding :10px;"> 
<br />
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
         ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
         
        SelectCommand="SELECT top 4 * FROM [commodity] WHERE whether_shelf = 0 AND ( merchandise = 1 OR merchandise = 3)  AND com_id like @layer + '%' ORDER BY RAND()">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="layer" />
    </SelectParameters>
    </asp:SqlDataSource>
     <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4" 
         Font-Size="80%" RepeatDirection="Horizontal" RepeatColumns="4">
         <ItemTemplate>
                <div style="text-align :center ; margin:5px 8px; width:180px;">
                        <div style="background-image:url(images/bg_header.gif); height :1.6em; border:2px solid #000000;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>' Text='<%#Eval("com_name")%>' Font-Bold ="True" title='<%# Eval("com_name") %>' ForeColor="White"></asp:HyperLink>
                        </div>
                        
                        <div style="width :176px; color:White ;  background-image:url(images/bg_grade_1.png); background-repeat :repeat-x ; background-position :bottom left ; border:2px solid #112222">
                        <div class="minpic" style="margin-left:25px; margin-right :25px;">
                             
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="7em" ImageAlign="Baseline" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" />
                            </asp:HyperLink>
                        </div>
                       
                       
                        <div style="width :176px; color:Black ;"><span>訂金：<%#Eval("add_money")%>元</span>｜<span>租金：<%#Eval("rent")%>元</span></div>
                        </div>
                    </div>  
         </ItemTemplate>
     </asp:DataList>
  </div> 
</div>


<div class="category">
<div id="search_area" style="background-image:url(images/searchbgsp.png");>

    <div style="font-size :80%; margin-bottom :20px; background-image:url(images/bgbottom.png); background-repeat :no-repeat ; background-position :bottom left ; padding-left :8px; margin-left :-10px;"> 
        關鍵字：
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 </div>
 商品資訊：
 <div>
     <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
         RepeatDirection="Horizontal" RepeatColumns="3">
         <asp:ListItem Value="%">不分類</asp:ListItem>
         <asp:ListItem Value="1">全新品</asp:ListItem>
         <asp:ListItem Value="2">二手品</asp:ListItem>
     </asp:RadioButtonList>
     <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" 
         RepeatDirection="Horizontal">
         <asp:ListItem Value =" AND shipping =1">可面交</asp:ListItem>
         <asp:ListItem>最新刊登</asp:ListItem>
     </asp:CheckBoxList>
 </div>
 地區：
 <div>
     <asp:DropDownList ID="DropDownList1" runat="server">
       <asp:ListItem Value="%">不限地區</asp:ListItem>
       <asp:ListItem>台北市</asp:ListItem>
       <asp:ListItem>基隆市</asp:ListItem>
       <asp:ListItem>台北縣</asp:ListItem>
       <asp:ListItem>宜蘭縣</asp:ListItem>
       <asp:ListItem>桃園縣</asp:ListItem>
       <asp:ListItem>新竹市</asp:ListItem>
       <asp:ListItem>新竹縣</asp:ListItem>
       <asp:ListItem>苗栗縣</asp:ListItem>
       <asp:ListItem>台中市</asp:ListItem>
       <asp:ListItem>台中縣</asp:ListItem>
       <asp:ListItem>彰化縣</asp:ListItem>
       <asp:ListItem>南投縣</asp:ListItem>
       <asp:ListItem>嘉義市</asp:ListItem>
       <asp:ListItem>嘉義縣</asp:ListItem>
       <asp:ListItem>雲林縣</asp:ListItem>
       <asp:ListItem>台南市</asp:ListItem>
       <asp:ListItem>台南縣</asp:ListItem>
       <asp:ListItem>高雄市</asp:ListItem>
       <asp:ListItem>高雄縣</asp:ListItem>
       <asp:ListItem>屏東縣</asp:ListItem>
       <asp:ListItem>花蓮縣</asp:ListItem>
       <asp:ListItem>台東縣</asp:ListItem>                                
     </asp:DropDownList>
 </div>
     <asp:Button ID="Button1" runat="server" Text="篩選商品" 
            PostBackUrl="~/Default3.aspx?k=" />
            <br /><br /><br />
 </div>
<div style="background-image:url(images/bgbottom.png); background-repeat :no-repeat ; background-position :bottom left ; padding-left :8px; margin-left :-10px;">
 <div class="publicity">

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
         SelectCommand="SELECT top 5 * FROM [commodity] WHERE whether_shelf = 0 ORDER BY Rank DESC"></asp:SqlDataSource>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
         Font-Size="80%">
         <ItemTemplate>
          <div style="text-align :center ; margin:5px 0; width:180px;">
                        <div style="background-image:url(images/bg_header.gif); height :1.6em; border:2px solid #000000;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>' Text='<%#Eval("com_name")%>' Font-Bold ="True" title='<%# Eval("com_name") %>' ForeColor="White"></asp:HyperLink>
                        </div>
                        
                        <div style="width :176px; color:White ;  background-image:url(images/bg_grade_2.png); background-repeat :repeat-x ; background-position :bottom left ; border:2px solid #cc9900">
                        <div class="minpic" style="margin-left:25px; margin-right :25px;">
                             
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="7em" ImageAlign="Baseline" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" />
                            </asp:HyperLink>
                        </div>
                       
                       
                        <div style="width :176px; color:Black ;"><span>訂金：<%#Eval("add_money")%>元</span>｜<span>租金：<%#Eval("rent")%>元</span></div>
                        </div>
                    </div> 
         </ItemTemplate>
     </asp:DataList>
</div>
<br />
 </div>
    </div>
    <div class="searchoutcome">
    <div style="border :2px solid #000000; height: 1.7em; background-image:url(images/bg_header.gif); color:White ; padding-top:2px; width :578px; margin:0px 16px; font-weight :bold ;">搜尋結果</div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
            SelectCommand="SELECT * FROM [commodity], [member_data] WHERE commodity.re_member_id = member_data.id AND whether_shelf = 0 AND ([com_id] LIKE @Param1 + '%') AND com_name like '%' + @search + '%' AND state like @state AND area like @area AND (merchandise = 1 OR merchandise = 3) AND com_name like '%' + @search2 + '%'">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="layer" Type="String" />
                    <asp:SessionParameter Name="search" SessionField="search" Type="String" DefaultValue ="%"  />
                    <asp:ControlParameter ControlID ="Textbox1" Name ="search2" PropertyName ="text" DefaultValue ="%" Type ="String" />
                    <asp:ControlParameter ControlID ="RadioButtonList1" Name ="state" PropertyName ="SelectedValue" Type="String" DefaultValue ="%" />
                    <asp:ControlParameter ControlID ="DropDownList1" Name ="area" PropertyName ="SelectedValue" Type ="String" DefaultValue ="%" /> 
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="com_id" 
            DataSourceID="SqlDataSource3" GroupItemCount="2">
            <EmptyItemTemplate>
                <td id="Td8" runat="server" />
                </EmptyItemTemplate>
                <ItemTemplate>
                    <td id="Td1" runat="server" style="">
                        <div class="productview">
                        <div style="width:280px; float :left ;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>' Text='<%#Eval("com_name")%>' Font-Size="120%" Font-Bold ="true"></asp:HyperLink>
                        <div style="width:280px; margin-left:10px;"><span>點閱次數：<%#Eval("click_percentage")%></span></div>
                        
                        <div class="minpic">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Default7.aspx?com_id=" & Eval("com_id") %>'>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Height="7em" ImageAlign="Baseline" />
                            </asp:HyperLink>
                        </div>
                        <div class="productinfo">
                        <ul>
                        <li>物主：<%#Eval("account")%></li>
                        <li>評價：<%#Eval("evaluat")%></li>
                        <li></li>
                        </ul>
                        </div>
                        

                        </div>
                        <div style="width:280px; margin-left:10px;"><span>交換期望：<asp:Label ID="Label1" runat="server" Text='<%#Eval("what_exchange")%>' ForeColor="Red"></asp:Label></span></div>
</div> 
                    </td>
                </ItemTemplate>
                
                <EmptyDataTemplate>
                    <table id="Table3" runat="server" style="">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <td id="Td9" runat="server" style="">
                        com_id:
                        <asp:TextBox ID="com_idTextBox" runat="server" Text='<%# Bind("com_id") %>' />
                        <br />
                        com_name:
                        <asp:TextBox ID="com_nameTextBox" runat="server" 
                            Text='<%# Bind("com_name") %>' />
                        <br />
                        com_pic:
                        <asp:TextBox ID="com_picTextBox" runat="server" Text='<%# Bind("com_pic") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table id="Table4" runat="server">
                        <tr id="Tr3" runat="server">
                            <td id="Td10" runat="server">
                                <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr ID="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr4" runat="server">
                            <td id="Td11" runat="server" style=" text-align :center ;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                            ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="第一頁" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                            ShowNextPageButton="False" ShowPreviousPageButton="False" LastPageText="最後一頁" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <EditItemTemplate>
                    <td id="Td12" runat="server" style="">
                        com_id:
                        <asp:Label ID="com_idLabel1" runat="server" Text='<%# Eval("com_id") %>' />
                        <br />
                        com_name:
                        <asp:TextBox ID="com_nameTextBox" runat="server" 
                            Text='<%# Bind("com_name") %>' />
                        <br />
                        com_pic:
                        <asp:TextBox ID="com_picTextBox" runat="server" Text='<%# Bind("com_pic") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                        <br />
                    </td>
                </EditItemTemplate>
                <GroupTemplate>
                    <tr ID="itemPlaceholderContainer" runat="server">
                        <td ID="itemPlaceholder" runat="server">
                        </td>
                    </tr>
                </GroupTemplate>
                <SelectedItemTemplate>
                    <td id="Td13" runat="server" style="">
                        com_id:
                        <asp:Label ID="com_idLabel" runat="server" Text='<%# Eval("com_id") %>' />
                        <br />
                        com_name:
                        <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' />
                        <br />
                        com_pic:
                        <asp:Label ID="com_picLabel" runat="server" Text='<%# Eval("com_pic") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
</div>
</div>
</div>


</asp:Content>

