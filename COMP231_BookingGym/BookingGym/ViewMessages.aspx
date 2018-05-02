<%@ Page Title="View Messages" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMessages.aspx.cs" Inherits="BookingGym.ViewMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <h3><%:Title %> </h3>
    <asp:GridView ID="gvMessages" runat="server" AutoGenerateColumns="False"
        DataKeyNames="MessageId" CssClass="table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="MessageId" HeaderText="MessageId" InsertVisible="False" ReadOnly="True" SortExpression="MessageId" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="DescMessage" HeaderText="Message" SortExpression="DescMessage" />
            <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
            <asp:BoundField DataField="Posted" HeaderText="Posted" SortExpression="Posted" />
        </Columns>
    </asp:GridView>








</asp:Content>
