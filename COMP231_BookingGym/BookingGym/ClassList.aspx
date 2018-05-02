<%@ Page Title="Class List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="BookingGym.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <h3><%:Title %> </h3>
    <br />
    <h4><%:DateTime.Now %> </h4>
    <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="False"
        CellPadding="4" CssClass="table table-hover" DataKeyNames="Name" OnRowCommand="gvList_RowCommand" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ClassName" HeaderText="Class Name" SortExpression="ClassName" />
            <asp:BoundField DataField="Professor" HeaderText="Instructor" SortExpression="Instructor" />
            <asp:ButtonField CommandName="Present" Text="Present" ButtonType="Button" ControlStyle-CssClass="btn btn-success btn-sm" />
            <asp:ButtonField CommandName="Absent" Text="Absent" ButtonType="Button" ControlStyle-CssClass="btn btn-danger btn-sm" />
        </Columns>
    </asp:GridView>

</asp:Content>
