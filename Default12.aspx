<%@ Page Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Default12.aspx.vb" Inherits="Default12" title="未命名頁面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.linframe
{
    float:left;
    width:550px;
    margin-left :10px;
    display :inline ;
}
.rinframe
{
    float:right;
    width:350px;
    margin-right:10px;
    display :inline ;
}
.bframe
{
    float:left;
    width:910px;
    border:1px solid #b8b8b8;
    margin:10px;
    display :inline ;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="context">
<div style="text-align:center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB_RentConnectionString2 %>" 
        SelectCommand="Select * From member_data,commodity WHERE re_member_id = id AND com_id = @com_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="com_id" QueryStringField="com_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
<div>恭喜你！你已經成功租借此商品。</div>
<div id="outframe">
<div class="section" style="width:200px">出租方資料</div>

<div style="margin-top:10px">
<div class="linframe">
<div>
<div class="section">基本資料</div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id,com_id" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
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
            帳號：<asp:Label ID="accountLabel" runat="server" Text='<%# Bind("account") %>' />
            <br />
            姓名：<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            E-mail：<asp:Label ID="e_mailLabel" runat="server" 
                Text='<%# Bind("e_mail") %>' />
            <br />
            電話：<asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
            <br />
            手機：<asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
</div>
</div>
<div class="rinframe">
<div class="section">安全小提醒</div>
<div>
請確認您要轉帳的賣家，並拒絕任何人指示您操作ATM，以避免受騙。
</div>
</div>
</div>

<div class="bframe">
    <br />
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="com_id" 
        DataSourceID="SqlDataSource1">
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
            <asp:TextBox ID="com_nameTextBox0" runat="server" 
                Text='<%# Bind("com_name") %>' />
            <br />
            com_pic:
            <asp:TextBox ID="com_picTextBox0" runat="server" 
                Text='<%# Bind("com_pic") %>' />
            <br />
            whether_shelf:
            <asp:TextBox ID="whether_shelfTextBox0" runat="server" 
                Text='<%# Bind("whether_shelf") %>' />
            <br />
            click_percentage:
            <asp:TextBox ID="click_percentageTextBox0" runat="server" 
                Text='<%# Bind("click_percentage") %>' />
            <br />
            merchandise:
            <asp:TextBox ID="merchandiseTextBox0" runat="server" 
                Text='<%# Bind("merchandise") %>' />
            <br />
            decision:
            <asp:TextBox ID="decisionTextBox0" runat="server" 
                Text='<%# Bind("decision") %>' />
            <br />
            rent:
            <asp:TextBox ID="rentTextBox0" runat="server" Text='<%# Bind("rent") %>' />
            <br />
            what_exchange:
            <asp:TextBox ID="what_exchangeTextBox0" runat="server" 
                Text='<%# Bind("what_exchange") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox0" runat="server" 
                Text='<%# Bind("description") %>' />
            <br />
            state:
            <asp:TextBox ID="stateTextBox0" runat="server" Text='<%# Bind("state") %>' />
            <br />
            area:
            <asp:TextBox ID="areaTextBox0" runat="server" Text='<%# Bind("area") %>' />
            <br />
            rat_total:
            <asp:TextBox ID="rat_totalTextBox0" runat="server" 
                Text='<%# Bind("rat_total") %>' />
            <br />
            poor_rat:
            <asp:TextBox ID="poor_ratTextBox0" runat="server" 
                Text='<%# Bind("poor_rat") %>' />
            <br />
            abandoned_count:
            <asp:TextBox ID="abandoned_countTextBox0" runat="server" 
                Text='<%# Bind("abandoned_count") %>' />
            <br />
            pay:
            <asp:TextBox ID="payTextBox0" runat="server" Text='<%# Bind("pay") %>' />
            <br />
            requirement:
            <asp:TextBox ID="requirementTextBox0" runat="server" 
                Text='<%# Bind("requirement") %>' />
            <br />
            shipping:
            <asp:TextBox ID="shippingTextBox0" runat="server" 
                Text='<%# Bind("shipping") %>' />
            <br />
            costs:
            <asp:TextBox ID="costsTextBox0" runat="server" Text='<%# Bind("costs") %>' />
            <br />
            other_tra:
            <asp:TextBox ID="other_traTextBox0" runat="server" 
                Text='<%# Bind("other_tra") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox0" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            ex_time:
            <asp:TextBox ID="ex_timeTextBox0" runat="server" 
                Text='<%# Bind("ex_time") %>' />
            <br />
            progress:
            <asp:TextBox ID="progressTextBox0" runat="server" 
                Text='<%# Bind("progress") %>' />
            <br />
            amount:
            <asp:TextBox ID="amountTextBox0" runat="server" Text='<%# Bind("amount") %>' />
            <br />
            days:
            <asp:TextBox ID="daysTextBox0" runat="server" Text='<%# Bind("days") %>' />
            <br />
            add_money:
            <asp:TextBox ID="add_moneyTextBox0" runat="server" 
                Text='<%# Bind("add_money") %>' />
            <br />
            continue_sign:
            <asp:TextBox ID="continue_signTextBox0" runat="server" 
                Text='<%# Bind("continue_sign") %>' />
            <br />
            automatic:
            <asp:TextBox ID="automaticTextBox0" runat="server" 
                Text='<%# Bind("automatic") %>' />
            <br />
            publish_time:
            <asp:TextBox ID="publish_timeTextBox0" runat="server" 
                Text='<%# Bind("publish_time") %>' />
            <br />
            end_time:
            <asp:TextBox ID="end_timeTextBox0" runat="server" 
                Text='<%# Bind("end_time") %>' />
            <br />
            total:
            <asp:TextBox ID="totalTextBox0" runat="server" Text='<%# Bind("total") %>' />
            <br />
            member_id:
            <asp:TextBox ID="member_idTextBox0" runat="server" 
                Text='<%# Bind("member_id") %>' />
            <br />
            re_member_id:
            <asp:TextBox ID="re_member_idTextBox0" runat="server" 
                Text='<%# Bind("re_member_id") %>' />
            <br />
            iseva:
            <asp:TextBox ID="isevaTextBox0" runat="server" Text='<%# Bind("iseva") %>' />
            <br />
            iseva2:
            <asp:TextBox ID="iseva2TextBox0" runat="server" Text='<%# Bind("iseva2") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
        <div style="float:left; width :200px; margin-left:10px;">
        租借商品資訊<br />
            <asp:Image ID="Image3" runat="server" Height="100px" 
                ImageUrl='<%# Eval("com_pic", "~\ComPicData\{0}") %>' Width="100px" />
            </div>
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
        </ItemTemplate>
    </asp:FormView>
</div>
</div>
</div>
</asp:Content>

