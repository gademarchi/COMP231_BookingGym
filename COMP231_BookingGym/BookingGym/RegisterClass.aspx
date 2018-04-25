<%@ Page Title="Register Class" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterClass.aspx.cs" Inherits="BookingGym.RegisterClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3><%:Title %> </h3>
    <br />
    <div class="form-center">
        <asp:TextBox runat="server" ID="txtClassName" placeholder="Class Name" CssClass="form-control"></asp:TextBox><br />
        <asp:DropDownList ID="ddlInstructor" CssClass="form-control" runat="server"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="ddlWeekDay" CssClass="form-control" runat="server">
            <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
            <asp:ListItem Value="Monday">Monday</asp:ListItem>
            <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
            <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
            <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
            <asp:ListItem Value="Friday">Friday</asp:ListItem>
            <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
        </asp:DropDownList><br/>
        <div class="form-inline">
            <asp:TextBox runat="server" ID="txtClassStarts" placeholder="Class Starts" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtClassFinish" placeholder="Class Finish" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-secondary" OnClick="btnSave_Click" OnClientClick='return confirm("Class Saved Sucessfully!");' />

    </div>



</asp:Content>
