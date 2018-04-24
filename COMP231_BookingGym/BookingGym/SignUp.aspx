<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BookingGym.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3><%:Title %> </h3>
    <br />
    <div class="form-center">
        <asp:TextBox runat="server" ID="txtName" placeholder="Name" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" CssClass="form-control"></asp:TextBox>
        <br />
        <div class="form-inline">
            <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtConfPassword" placeholder="Confirm Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>
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
            <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-info" OnClick="btnSave_Click" OnClientClick='return confirm("User Record Saved Sucessfully");' />
            <asp:Button runat="server" ID="btnClear" Text="Clear" CssClass="btn btn-secondary" OnClick="btnClear_Click" />
        </div>
    </div>
</asp:Content>
