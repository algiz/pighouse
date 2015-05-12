<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default9.aspx.vb" Inherits="Default9" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.context
{
    font-size :80%;
}
.style1
{
    background-color:#ffffce;
}
        .style2
        {
            background-color: #ffffce;
            height: 56px;
        }
        .style3
        {
            height: 56px;
        }
    </style>


 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <div id="mainout">
<div class="section" style="width:200px">
    刊登拍賣商品 - 選擇刊登類別
</div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="ca_id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="ca_id" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox2" DefaultValue="" Name="ca_id" 
                        PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox3" DefaultValue="" Name="ca_id" 
                        PropertyName="SelectedValue" Type="String" />
                        </SelectParameters></asp:SqlDataSource>
<br />

<div class="context">
<div style="background-color: #CCCCCC">
    <b>選擇商品刊登的類別</b>
</div>
<br />
<div>
    請先選擇主分類，再依序選擇次分類即可<br />

    * 注意： 商品刊登後將不能更改類別（技巧教學：選擇分類）<br />
    * 如果您無法使用下列快速分類選單，請選擇分類清單模式<br />
</div>

<div style="text-align :left; ">
<div class="typediv">主分類<br />
    <asp:ListBox ID="ListBox1" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource1" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True">
    </asp:ListBox>
</div>
<div class="typediv">次分類1<br />
    <asp:ListBox ID="ListBox2" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource2" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True">

    </asp:ListBox>
</div>
<div class="typediv">次分類2<br />
    <asp:ListBox ID="ListBox3" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource3" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True"></asp:ListBox>
</div>
<div class="typediv">次分類3<br />
    <asp:ListBox ID="ListBox4" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource4" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True"></asp:ListBox>
</div>
</div>
<div style ="clear :both ;"></div>
<div style="background-color: #CCCCCC">你選擇了以下分類: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
<div style="border:1px solid #b8b8b8">
        <asp:CheckBox ID="CheckBox1" runat="server" 
            Text="請勿在商品頁留下連絡資料/網址，或填寫與刊登商品無關的關鍵字誤導搜尋。查詢 違規的刊登行為" />
</div>
</div>
<div style="text-align:center"><asp:Button ID="Button1" runat="server" Text="繼續" /></div>
        
</div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div id="Div1">
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="ca_id" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox5" Name="ca_id" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox6" Name="ca_id" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [category] WHERE ([ca_id] LIKE @ca_id + '__')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox7" Name="ca_id" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
<div class="section" style="width:200px">新品上架</div>
<div class="frame">
<div style="background-color:#CCCCCC">你選擇了以下分類: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</div>
</div>
<div class="section" style="width:200px">選擇圖片</div>
<div class="frame">
    
    請選擇你要上傳的照片<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        DeleteCommand="DELETE FROM [pictemp] WHERE [pictemp_id] = @pictemp_id" 
        InsertCommand="INSERT INTO [pictemp] ([picpathname], [pic_u_id]) VALUES (@picpathname, @pic_u_id)" 
        SelectCommand="SELECT * FROM [pictemp] WHERE pic_u_id = @pic_u_id  ORDER BY [pictemp_id] DESC" 
        
        UpdateCommand="UPDATE [pictemp] SET [picpathname] = @picpathname, [pic_u_id] = @pic_u_id WHERE [pictemp_id] = @pictemp_id">
        <SelectParameters>
            <asp:SessionParameter Name="pic_u_id" SessionField="uid" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="pictemp_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="picpathname" Type="String" />
            <asp:Parameter Name="pic_u_id" Type="Int32" />
            <asp:Parameter Name="pictemp_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="picpathname" Type="String" />
            <asp:Parameter Name="pic_u_id" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    圖片一：<asp:FileUpload ID="FileUpload1" runat="server" /><br />
    <asp:Button ID="Button2" runat="server" Text="上傳" style="width: 40px" 
        CausesValidation="False" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="pictemp_id" 
                DataSourceID="SqlDataSource5">
                <EditItemTemplate>
                    pictemp_id:
                    <asp:Label ID="pictemp_idLabel1" runat="server" 
                        Text='<%# Eval("pictemp_id") %>' />
                    <br />
                    picpathname:
                    <asp:TextBox ID="picpathnameTextBox" runat="server" 
                        Text='<%# Bind("picpathname") %>' />
                    <br />
                    pic_u_id:
                    <asp:TextBox ID="pic_u_idTextBox" runat="server" 
                        Text='<%# Bind("pic_u_id") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    picpathname:
                    <asp:TextBox ID="picpathnameTextBox" runat="server" 
                        Text='<%# Bind("picpathname") %>' />
                    <br />
                    pic_u_id:
                    <asp:TextBox ID="pic_u_idTextBox" runat="server" 
                        Text='<%# Bind("pic_u_id") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl='<%# Bind("picpathname", "~/Thumb/{0}") %>' />
                    <br />
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="刪除" 
                        CommandArgument='<%# Eval("picpathname") %>' onclick="DeleteButton_Click"/>
                    &nbsp;
                </ItemTemplate>
            </asp:FormView>
        </ContentTemplate>
    </asp:UpdatePanel>

    </div>
    <div class="section" style="width:200px">商品說明</div>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
                    DeleteCommand="DELETE FROM [commodity] WHERE [com_id] = @com_id" 
                    InsertCommand="INSERT INTO commodity(com_id, com_pic, publish_time, end_time, com_name, whether_shelf, click_percentage, merchandise, decision, rent, what_exchange, want, description, state, area, rat_total, poor_rat, pay, abandoned_count, requirement, shipping, costs, other_tra, rank, progress, days, add_money, continue_sign, automatic, total, re_member_id) VALUES (@com_id, @com_pic, @publish_time, @end_time, @com_name, @whether_shelf, @click_percentage, @merchandise, @decision, @rent, @what_exchange, @want, @description, @state, @area, @rat_total, @poor_rat, @pay, @abandoned_count, @requirement, @shipping, @costs, @other_tra, @rank, @progress, @days, @add_money, @continue_sign, @automatic, @total, @re_member_id)" 
                    SelectCommand="SELECT * FROM [commodity]" 
                    
                    
                    
                    
                    
                    
                    
                    UpdateCommand="UPDATE [commodity] SET [com_name] = @com_name, [com_pic] = @com_pic, [whether_shelf] = @whether_shelf, [click_percentage] = @click_percentage, [merchandise] = @merchandise, [decision] = @decision, [rent] = @rent, [what_exchange] = @what_exchange, [description] = @description, [state] = @state, [area] = @area, [rat_total] = @rat_total, [poor_rat] = @poor_rat, [abandoned_count] = @abandoned_count, [pay] = @pay, [requirement] = @requirement, [shipping] = @shipping, [costs] = @costs, [other_tra] = @other_tra, [rank] = @rank, [ex_time] = @ex_time, [progress] = @progress, [amount] = @amount, [days] = @days, [add_money] = @add_money, [continue_sign] = @continue_sign, [automatic] = @automatic, [publish_time] = @publish_time, [end_time] = @end_time, [total] = @total, [member_id] = @member_id, [re_member_id] = @re_member_id WHERE [com_id] = @com_id">
                    <DeleteParameters>
                        <asp:Parameter Name="com_id" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="com_name" Type="String" />
                        <asp:Parameter Name="com_pic" Type="String" />
                        <asp:Parameter Name="whether_shelf" Type="String" />
                        <asp:Parameter Name="click_percentage" Type="Int32" />
                        <asp:Parameter Name="merchandise" Type="Int32" />
                        <asp:Parameter Name="decision" Type="Int32" />
                        <asp:Parameter Name="rent" Type="Int32" />
                        <asp:Parameter Name="what_exchange" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="state" Type="Int32" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="rat_total" Type="Int32" />
                        <asp:Parameter Name="poor_rat" Type="Int32" />
                        <asp:Parameter Name="abandoned_count" Type="Int32" />
                        <asp:Parameter Name="pay" Type="String" />
                        <asp:Parameter Name="requirement" Type="Int32" />
                        <asp:Parameter Name="shipping" Type="String" />
                        <asp:Parameter Name="costs" Type="Int32" />
                        <asp:Parameter Name="other_tra" Type="String" />
                        <asp:Parameter Name="rank" Type="String" />
                        <asp:Parameter DbType="Datetime" Name="ex_time" />
                        <asp:Parameter Name="progress" Type="Int32" />
                        <asp:Parameter Name="amount" Type="Int32" />
                        <asp:Parameter Name="days" Type="Int32" />
                        <asp:Parameter Name="add_money" Type="Int32" />
                        <asp:Parameter Name="continue_sign" Type="String" />
                        <asp:Parameter Name="automatic" Type="Int32" />
                        <asp:Parameter DbType="Datetime" Name="publish_time" />
                        <asp:Parameter DbType="Datetime" Name="end_time" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="member_id" Type="Int32" />
                        <asp:Parameter Name="re_member_id" Type="Int32" />
                        <asp:Parameter Name="com_id" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:SessionParameter Name="com_id" SessionField="categoryid" Type="String" />
                        <asp:SessionParameter Name="com_pic" SessionField="picpath" />
                        <asp:SessionParameter Name="publish_time" SessionField="today" Type="DateTime" />
                        <asp:SessionParameter Name="end_time" SessionField="endday" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox1" Name="com_name" 
                            PropertyName="Text" />
                        <asp:Parameter DefaultValue="0" Name="whether_shelf" />
                        <asp:Parameter DefaultValue="0" Name="click_percentage" />
                        <asp:SessionParameter DefaultValue="" Name="merchandise" 
                            SessionField="merchandise" Type="Int32" />
                        <asp:Parameter DefaultValue="0" Name="decision" />
                        <asp:ControlParameter ControlID="TextBox13" DefaultValue="" Name="rent" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" DefaultValue="" Name="what_exchange" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox4" Name="description" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="state" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList4" Name="area" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                            Name="rat_total" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox5" DefaultValue="0" Name="poor_rat" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="pay" DefaultValue="0" Name="pay" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox6" DefaultValue="0" 
                            Name="abandoned_count" PropertyName="Text" />
                        <asp:ControlParameter ControlID="RadioButtonList3" DefaultValue="" 
                            Name="requirement" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="shipping" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox7" DefaultValue="0" Name="costs" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox8" DefaultValue="" Name="other_tra" 
                            PropertyName="Text" />
                        <asp:Parameter Name="rank" DefaultValue="0" />
                        <asp:Parameter DefaultValue="0" Name="progress" />
                        <asp:ControlParameter ControlID="TextBox15" DefaultValue="0" Name="days" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox9" Name="add_money" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="RadioButtonList4" Name="continue_sign" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox11" Name="automatic" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox14" DefaultValue="1" Name="total" 
                            PropertyName="Text" />
                        <asp:SessionParameter DefaultValue="" Name="re_member_id" SessionField="uid" />
                        <asp:SessionParameter Name="want" SessionField="want" />
                    </InsertParameters>
                </asp:SqlDataSource>
    <div class="frame">
    <table width="100%" border="1px" style="border-color:#b8b8b8">
    <tr>
    <td class="style1">*商品名稱</td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp; 數量(1~1000)：<asp:TextBox 
            ID="TextBox14" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox14" ErrorMessage="*" MaximumValue="1000" 
            MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox14" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
    <td class="style2">*交易方式</td>
    <td class="style3">
    <div style="float:left">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="1">出租</asp:ListItem>
            <asp:ListItem Value="2">交換</asp:ListItem>
        </asp:CheckBoxList>
        </div>
        訂金(1~100000)：<asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
        元&nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" 
            ControlToValidate="TextBox9" Enabled="False" ErrorMessage="*" 
            MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox9" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp; 租金(1~100000)：<asp:TextBox 
            ID="TextBox13" runat="server" Enabled="False"></asp:TextBox>
        元<asp:RangeValidator ID="RangeValidator3" runat="server" 
            ControlToValidate="TextBox13" Enabled="False" ErrorMessage="*" 
            MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox13" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;租期(1~365)：<asp:TextBox ID="TextBox15" runat="server" Enabled="False"></asp:TextBox>
        天<asp:RangeValidator ID="RangeValidator4" runat="server" 
            ControlToValidate="TextBox15" Enabled="False" ErrorMessage="*" 
            MaximumValue="365" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox15" Enabled="False" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
    <td class="style1">是否可續約</td>
    <td>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
            RepeatDirection="Horizontal" Enabled="False">
            <asp:ListItem Value="0">是</asp:ListItem>
            <asp:ListItem Selected="True" Value="1">否</asp:ListItem>
        </asp:RadioButtonList>
        </td>
    </tr>
        <tr>
    <td class="style1">交換物品</td>
    <td>
        想換：<asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox><br />
                分類表：
        <div style="text-align :center ">
<div class="typediv2">主分類<br />
    <asp:ListBox ID="ListBox5" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource7" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True">
    </asp:ListBox>
</div>
<div class="typediv2">次分類1<br />
    <asp:ListBox ID="ListBox6" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource8" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True">

    </asp:ListBox>
</div>
<div>次分類2<br />
    <asp:ListBox ID="ListBox7" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource9" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True"></asp:ListBox>
</div>
<div style="text-align :left ; margin-left:47px;">次分類3<br />
    <asp:ListBox ID="ListBox8" runat="server" Height="110px" Width="210px" 
        DataSourceID="SqlDataSource10" DataTextField="ca_name" 
        DataValueField="ca_id" AutoPostBack="True"></asp:ListBox>
</div>
</div>
<div style="background-color: #CCCCCC">你選擇了以下分類: 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
        </td>
        
        
    </tr>
        <tr>
    <td class="style1">物品說明</td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server" Height="300px" TextMode="MultiLine" 
            Width="500px"></asp:TextBox></td>
    </tr>
        <tr>
    <td class="style1">物品狀態</td>
    <td>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal">
            <asp:ListItem Value="1">全新品</asp:ListItem>
            <asp:ListItem Value="2">二手品</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>
    <tr>
    <td class="style1">物品所在地</td>
    <td>
    <div style="float:left">
        </div>
<div style="padding:0 0 5px 0">
        <asp:DropDownList ID="DropDownList4" runat="server">
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
                        <asp:ListItem>澎湖縣</asp:ListItem>
                        <asp:ListItem>金門縣</asp:ListItem>
                        <asp:ListItem>連江縣</asp:ListItem>
                    </asp:DropDownList>
                    </div>
        </td>
                
    </tr>
    <tr>
    <td class="style1">*買家下標限制</td>
    <td>評價必須大於等於<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>，其中差勁評價小於(0~100)<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        分<asp:RangeValidator ID="RangeValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="*" MaximumValue="100" 
            MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
        ，棄標次數不可超過*(0~100)<asp:TextBox
        ID="TextBox6" runat="server"></asp:TextBox>次
     
        <asp:RangeValidator ID="RangeValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="*" MaximumValue="100" 
            MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td class="style1">付款方式</td>
    <td>
        <asp:RadioButtonList ID="pay" runat="server" 
            RepeatDirection="Horizontal">
        <asp:ListItem Value="1">貨到付款</asp:ListItem>
        <asp:ListItem Value="2">面交自取</asp:ListItem>
        <asp:ListItem Value="3">郵局或銀行轉帳</asp:ListItem>
        <asp:ListItem Value="4">郵局無摺存簿</asp:ListItem>
        <asp:ListItem Value="5" Selected="True">虛擬貨幣</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>
    <tr>
    <td class="style1">運費規定</td>
    <td>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
            RepeatDirection="Horizontal">
        <asp:ListItem Value="1">買家自付</asp:ListItem>
        <asp:ListItem Value="2">免運費</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>
    <tr>
    <td class="style1">*運送方式</td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="1">面交自取</asp:ListItem>
            <asp:ListItem Value="2">宅配</asp:ListItem>
            <asp:ListItem Value="3">郵寄</asp:ListItem>
            <asp:ListItem Value="4">貨運</asp:ListItem>
        </asp:DropDownList><br />
        運費(0~10000)：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>元/件
     
        <asp:RangeValidator ID="RangeValidator7" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="*" MaximumValue="10000" 
            MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td class="style1">其他運送付款說明</td>
    <td>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>十個中文字內</td>
        </tr>
        <tr>
        <td class="style1">*刊登時間設定</td>
        <td>刊登幾天(3~7)：<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>天<asp:RangeValidator 
                ID="RangeValidator8" runat="server" ControlToValidate="TextBox12" 
                ErrorMessage="*" MaximumValue="7" MinimumValue="3" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="*"></asp:RequiredFieldValidator>
            <br />
            自動上架(0~5)：<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>次
         
            <asp:RangeValidator ID="RangeValidator9" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="*" MaximumValue="5" 
                MinimumValue="0"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        </tr>
    </table>
    </div>
        <asp:Button ID="Button4" runat="server" Text="送出" />
</div>
        </asp:View>
        <asp:View ID="View3" runat="server">
        </asp:View>
        <asp:View ID="View4" runat="server">
        </asp:View>
        <asp:View ID="View5" runat="server">
        </asp:View>
        <asp:View ID="View6" runat="server">
        </asp:View>
    </asp:MultiView>
    
</asp:Content>

