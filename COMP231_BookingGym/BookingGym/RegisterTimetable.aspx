<%@ Page Title="Register a Timetable" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterTimetable.aspx.cs" Inherits="BookingGym.Register_Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3><%:Title %></h3>
    <asp:Label runat="server" ID="lblUser" Text="Select the User" class="font-weight-bold"></asp:Label><br />
    <asp:DropDownList runat="server" ID="ddlUser" CssClass="form-control"  ></asp:DropDownList>
    <br />
    <asp:Label runat="server" ID="Label1" Text="Select the Class" class="font-weight-bold"></asp:Label><br />
    <asp:DropDownList runat="server" ID="ddlClass" CssClass="form-control" ></asp:DropDownList>


</asp:Content>
