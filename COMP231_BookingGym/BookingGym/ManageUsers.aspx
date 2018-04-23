<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="BookingGym.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <img class="mb-4" src="http://icons.iconarchive.com/icons/sonya/swarm/128/gym-icon.png" alt="" width="72" height="72">&nbsp;<h3><%: Title %></h3>
    <asp:GridView ID="gvUsers" runat="server" CellPadding="4" TabIndex="1"
        OnRowCommand="gvUsers_RowCommand" CssClass="table table-hover"
        OnRowUpdating="gvUsers_RowUpdating" OnRowDeleting="gvUsers_RowDeleting" ForeColor="#333333" GridLines="None" OnLoad="GridView1_Load"
        AutoGenerateColumns="False" DataKeyNames="UserId">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
            <asp:BoundField DataField="Admin" HeaderText="Admin" SortExpression="Admin" />
            <asp:ButtonField CommandName="Update" Text="Update" ButtonType="Button" ControlStyle-CssClass="btn btn-warning btn-sm p-1"></asp:ButtonField>
            <asp:ButtonField CommandName="Delete" Text="Delete" ButtonType="Button" ControlStyle-CssClass="btn btn-danger btn-sm p-1"></asp:ButtonField>
        </Columns>
        <%--            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>
    </asp:GridView>
    <br />

    <div class="form-center">

        <asp:TextBox runat="server" ID="txtUserId" placeholder="UserID" ReadOnly="true" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtName" placeholder="Name" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" CssClass="form-control"></asp:TextBox>
        <br />
        <div class="form-inline">
            <asp:TextBox runat="server" ID="txtAddress" placeholder="Address" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtCity" placeholder="City" Class="form-control"></asp:TextBox>
        </div>
        <br />
        <div class="form-inline">
            <asp:DropDownList ID="ddlProvince" CssClass="form-control" runat="server">
                <asp:ListItem>Provinces</asp:ListItem>
                <asp:ListItem Value="Ontario">Ontario</asp:ListItem>
                <asp:ListItem Value="Quebec">Quebec</asp:ListItem>
                <asp:ListItem Value="British Columbia">British Columbia</asp:ListItem>
                <asp:ListItem Value="Alberta">Alberta</asp:ListItem>
                <asp:ListItem Value="Manitoba">Manitoba</asp:ListItem>
                <asp:ListItem Value="Saskatchewan">Saskatchewan</asp:ListItem>
                <asp:ListItem Value="Nova Scotia">Nova Scotia</asp:ListItem>
                <asp:ListItem Value="New Brunswick">New Brunswick</asp:ListItem>
                <asp:ListItem Value="Newfoundland and Labrador">Newfoundland and Labrador</asp:ListItem>
                <asp:ListItem Value="Prince Edward Island">Prince Edward Island</asp:ListItem>
                <asp:ListItem Value="Northwest Territories">Northwest Territories</asp:ListItem>
                <asp:ListItem Value="Nunavut">Nunavut</asp:ListItem>
                <asp:ListItem Value="Yukon">Yukon</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox runat="server" ID="txtPostalCode" placeholder="Postal Code" Class="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong Postal Code!" ControlToValidate="txtPostalCode" CssClass="alert alert-danger" ValidationExpression="[A-Z][0-9][A-Z] ?[0-9][A-Z][0-9]"></asp:RegularExpressionValidator>
        </div>
        <br />
        <asp:Label runat="server" CssClass="alert alert-danger" ID="label1" Text="The User is a Admin?"></asp:Label>
        <br />
        <br />
        <asp:RadioButton Text="Yes" ID="rdYes" GroupName="admin" CssClass="radio" runat="server"></asp:RadioButton>
        <asp:RadioButton Text="No" ID="rdNo" GroupName="admin" CssClass="radio" runat="server"></asp:RadioButton>
        <br />
        <div class="form-inline">
            <asp:Button runat="server" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" OnClientClick='return confirm("Employee Record Update Successfully.");' CssClass="btn btn-info" />
            <asp:Button runat="server" ID="btnClear" Text="Clear" CssClass="btn btn-secondary" />
        </div>
    </div>


</asp:Content>
