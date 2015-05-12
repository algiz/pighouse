<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default11.aspx.vb" Inherits="Default11" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css" >
#leftframe
{
    float:left;
    width:490px;
    margin:5px;
    display :inline;
}
#rightframe
{
    float:right;
    width:390px;
    margin:5px;
    display :inline;
}
.inframe
{
    margin-top:10px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="context">
<div id="leftframe">
<div class="section">確認租借品訊息</div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="com_id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
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
            whether_shelf:
            <asp:TextBox ID="whether_shelfTextBox" runat="server" 
                Text='<%# Bind("whether_shelf") %>' />
            <br />
            click_percentage:
            <asp:TextBox ID="click_percentageTextBox" runat="server" 
                Text='<%# Bind("click_percentage") %>' />
            <br />
            merchandise:
            <asp:TextBox ID="merchandiseTextBox" runat="server" 
                Text='<%# Bind("merchandise") %>' />
            <br />
            decision:
            <asp:TextBox ID="decisionTextBox" runat="server" 
                Text='<%# Bind("decision") %>' />
            <br />
            rent:
            <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
            <br />
            what_exchange:
            <asp:TextBox ID="what_exchangeTextBox" runat="server" 
                Text='<%# Bind("what_exchange") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" 
                Text='<%# Bind("description") %>' />
            <br />
            state:
            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
            <br />
            area:
            <asp:TextBox ID="areaTextBox" runat="server" Text='<%# Bind("area") %>' />
            <br />
            rat_total:
            <asp:TextBox ID="rat_totalTextBox" runat="server" 
                Text='<%# Bind("rat_total") %>' />
            <br />
            poor_rat:
            <asp:TextBox ID="poor_ratTextBox" runat="server" 
                Text='<%# Bind("poor_rat") %>' />
            <br />
            abandoned_count:
            <asp:TextBox ID="abandoned_countTextBox" runat="server" 
                Text='<%# Bind("abandoned_count") %>' />
            <br />
            pay:
            <asp:TextBox ID="payTextBox" runat="server" Text='<%# Bind("pay") %>' />
            <br />
            requirement:
            <asp:TextBox ID="requirementTextBox" runat="server" 
                Text='<%# Bind("requirement") %>' />
            <br />
            shipping:
            <asp:TextBox ID="shippingTextBox" runat="server" 
                Text='<%# Bind("shipping") %>' />
            <br />
            costs:
            <asp:TextBox ID="costsTextBox" runat="server" Text='<%# Bind("costs") %>' />
            <br />
            other_tra:
            <asp:TextBox ID="other_traTextBox" runat="server" 
                Text='<%# Bind("other_tra") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            ex_time:
            <asp:TextBox ID="ex_timeTextBox" runat="server" Text='<%# Bind("ex_time") %>' />
            <br />
            progress:
            <asp:TextBox ID="progressTextBox" runat="server" 
                Text='<%# Bind("progress") %>' />
            <br />
            amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            days:
            <asp:TextBox ID="daysTextBox" runat="server" Text='<%# Bind("days") %>' />
            <br />
            add_money:
            <asp:TextBox ID="add_moneyTextBox" runat="server" 
                Text='<%# Bind("add_money") %>' />
            <br />
            continue_sign:
            <asp:TextBox ID="continue_signTextBox" runat="server" 
                Text='<%# Bind("continue_sign") %>' />
            <br />
            automatic:
            <asp:TextBox ID="automaticTextBox" runat="server" 
                Text='<%# Bind("automatic") %>' />
            <br />
            publish_time:
            <asp:TextBox ID="publish_timeTextBox" runat="server" 
                Text='<%# Bind("publish_time") %>' />
            <br />
            end_time:
            <asp:TextBox ID="end_timeTextBox" runat="server" 
                Text='<%# Bind("end_time") %>' />
            <br />
            total:
            <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
            <br />
            member_id:
            <asp:TextBox ID="member_idTextBox" runat="server" 
                Text='<%# Bind("member_id") %>' />
            <br />
            re_member_id:
            <asp:TextBox ID="re_member_idTextBox" runat="server" 
                Text='<%# Bind("re_member_id") %>' />
            <br />
            iseva:
            <asp:TextBox ID="isevaTextBox" runat="server" Text='<%# Bind("iseva") %>' />
            <br />
            iseva2:
            <asp:TextBox ID="iseva2TextBox" runat="server" Text='<%# Bind("iseva2") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
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
            whether_shelf:
            <asp:TextBox ID="whether_shelfTextBox" runat="server" 
                Text='<%# Bind("whether_shelf") %>' />
            <br />
            click_percentage:
            <asp:TextBox ID="click_percentageTextBox" runat="server" 
                Text='<%# Bind("click_percentage") %>' />
            <br />
            merchandise:
            <asp:TextBox ID="merchandiseTextBox" runat="server" 
                Text='<%# Bind("merchandise") %>' />
            <br />
            decision:
            <asp:TextBox ID="decisionTextBox" runat="server" 
                Text='<%# Bind("decision") %>' />
            <br />
            rent:
            <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
            <br />
            what_exchange:
            <asp:TextBox ID="what_exchangeTextBox" runat="server" 
                Text='<%# Bind("what_exchange") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" 
                Text='<%# Bind("description") %>' />
            <br />
            state:
            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
            <br />
            area:
            <asp:TextBox ID="areaTextBox" runat="server" Text='<%# Bind("area") %>' />
            <br />
            rat_total:
            <asp:TextBox ID="rat_totalTextBox" runat="server" 
                Text='<%# Bind("rat_total") %>' />
            <br />
            poor_rat:
            <asp:TextBox ID="poor_ratTextBox" runat="server" 
                Text='<%# Bind("poor_rat") %>' />
            <br />
            abandoned_count:
            <asp:TextBox ID="abandoned_countTextBox" runat="server" 
                Text='<%# Bind("abandoned_count") %>' />
            <br />
            pay:
            <asp:TextBox ID="payTextBox" runat="server" Text='<%# Bind("pay") %>' />
            <br />
            requirement:
            <asp:TextBox ID="requirementTextBox" runat="server" 
                Text='<%# Bind("requirement") %>' />
            <br />
            shipping:
            <asp:TextBox ID="shippingTextBox" runat="server" 
                Text='<%# Bind("shipping") %>' />
            <br />
            costs:
            <asp:TextBox ID="costsTextBox" runat="server" Text='<%# Bind("costs") %>' />
            <br />
            other_tra:
            <asp:TextBox ID="other_traTextBox" runat="server" 
                Text='<%# Bind("other_tra") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            ex_time:
            <asp:TextBox ID="ex_timeTextBox" runat="server" Text='<%# Bind("ex_time") %>' />
            <br />
            progress:
            <asp:TextBox ID="progressTextBox" runat="server" 
                Text='<%# Bind("progress") %>' />
            <br />
            amount:
            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            days:
            <asp:TextBox ID="daysTextBox" runat="server" Text='<%# Bind("days") %>' />
            <br />
            add_money:
            <asp:TextBox ID="add_moneyTextBox" runat="server" 
                Text='<%# Bind("add_money") %>' />
            <br />
            continue_sign:
            <asp:TextBox ID="continue_signTextBox" runat="server" 
                Text='<%# Bind("continue_sign") %>' />
            <br />
            automatic:
            <asp:TextBox ID="automaticTextBox" runat="server" 
                Text='<%# Bind("automatic") %>' />
            <br />
            publish_time:
            <asp:TextBox ID="publish_timeTextBox" runat="server" 
                Text='<%# Bind("publish_time") %>' />
            <br />
            end_time:
            <asp:TextBox ID="end_timeTextBox" runat="server" 
                Text='<%# Bind("end_time") %>' />
            <br />
            total:
            <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
            <br />
            member_id:
            <asp:TextBox ID="member_idTextBox" runat="server" 
                Text='<%# Bind("member_id") %>' />
            <br />
            re_member_id:
            <asp:TextBox ID="re_member_idTextBox" runat="server" 
                Text='<%# Bind("re_member_id") %>' />
            <br />
            iseva:
            <asp:TextBox ID="isevaTextBox" runat="server" Text='<%# Bind("iseva") %>' />
            <br />
            iseva2:
            <asp:TextBox ID="iseva2TextBox" runat="server" Text='<%# Bind("iseva2") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="Image3" runat="server" Height="100px" 
                ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Width="100px" />
            <br />
            商品名稱：
            <asp:Label ID="com_nameLabel" runat="server" Text='<%# Bind("com_name") %>' />
            <br />
            訂金：
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("add_money") %>'></asp:Label>元
            <br />
            租金：
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("rent") %>'></asp:Label>元
            <br />
            運費：
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("costs") %>'></asp:Label>元<br />
            租期：
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("days") %>'></asp:Label>天
             
            <br />
            付款方式：<asp:Label ID="Label6" runat="server" Text='<%# Eval("pay") %>'></asp:Label>
            <br />
        </ItemTemplate>
    </asp:FormView>
   <div class="inframe">
       總金額：<asp:Label ID="Label5" runat="server" Text=""></asp:Label>元
       <br />
       資料確認完畢之後請選擇你要的方式結標。<br />
       <asp:Button ID="Button1" runat="server" Text="使用虛擬貨幣" />
       <asp:Button ID="Button2" runat="server" Text="使用其他匯款方式" />
       <asp:Button ID="Button3" runat="server" Text="取消" />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
           SelectCommand="SELECT * FROM [commodity] WHERE ([com_id] = @com_id)">
           <SelectParameters>
               <asp:QueryStringParameter Name="com_id" QueryStringField="com_id" 
                   Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
       </div>
</div>
<div id="rightframe">
<div class="section">確定商品</div>
    請確定商品之後點選匯款方式<br />
    一但點選匯款方式之後將會直接完成租借動作<br />
    此動作無法挽回<br />
    請再三確認商品訊息是否正確。<br />
</div>
</div>

</asp:Content>

