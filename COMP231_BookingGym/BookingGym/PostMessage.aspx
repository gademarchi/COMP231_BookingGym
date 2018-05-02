<%@ Page Title="Post a Message" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostMessage.aspx.cs" Inherits="BookingGym.PostMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <h3><%:Title %> </h3>
    <br />
    <div class="form-center">
        <asp:TextBox runat="server" ID="txtTitle" placeholder="Message Title" Width="400px" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtMessage" placeholder="Professor" TextMode="MultiLine" Height="120px" Width="400px" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Button runat="server" ID="btnPost" Text="Post" CssClass="btn btn-primary" OnClick="btnPost_Click" OnClientClick='return confirm("Message Sent");' />
    </div>
</asp:Content>
