<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookingGym.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="text-center">
        <img class="mb-4" src="http://icons.iconarchive.com/icons/sonya/swarm/128/gym-icon.png" alt="" width="72" height="72">
    </div>
    <br />
    <div class="text-center">
        <h1 class="h3 mb-3 font-weight-normal">Sign in</h1>
        <br />
    </div>
    <div class="input">
        <asp:TextBox runat="server" ID="txtEmail" class="form-control" Width="330px" placeholder="Username"></asp:TextBox>
    </div>
    <br />
    <div class="input">
        <asp:TextBox runat="server" ID="txtPassword" class="form-control" TextMode="Password" Width="330px" placeholder="Password"></asp:TextBox>
    </div>
    <br />
    <div class="input">
        <asp:Button runat="server" ID="btnSignIn" OnClick="btnSignIn_Click" class="btn btn-primary btn-block" Text="Sign In"></asp:Button>
    </div>
    <br>
    <div class="input">
        <asp:Button runat="server" ID="btnSignUp" OnClick="btnSignUp_Click" class="btn btn-primary btn-block" Text="Sign Up"></asp:Button>
    </div>





</asp:Content>
