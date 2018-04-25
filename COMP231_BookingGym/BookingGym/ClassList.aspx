<%@ Page Title="Class List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="BookingGym.ClassList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" CssClass="table table-hover" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Today" HeaderText="Today" SortExpression="Today" />
        </Columns>
    </asp:GridView>




</asp:Content>
