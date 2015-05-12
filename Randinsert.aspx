<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Randinsert.aspx.vb" Inherits="Default10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
    要產生幾筆<asp:TextBox ID="TextBox1" runat="server" Width="170px" 
        Text='<%# Bind("no") %>'></asp:TextBox>
    <br />
    點數為幾點的?<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
    <br />
    預覽：<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="point_id" 
        DataSourceID="SqlDataSource1" PageSize="50">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="point_id" HeaderText="point_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="point_id" />
            <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
            <asp:BoundField DataField="point" HeaderText="point" SortExpression="point" />
            <asp:BoundField DataField="whether_use" HeaderText="whether_use" 
                SortExpression="whether_use" />
            <asp:BoundField DataField="use_time" HeaderText="use_time" 
                SortExpression="use_time" />
            <asp:BoundField DataField="po_m_id" HeaderText="po_m_id" 
                SortExpression="po_m_id" />
        </Columns>
    </asp:GridView>
    <br />
    </form>
</body>
</html>
