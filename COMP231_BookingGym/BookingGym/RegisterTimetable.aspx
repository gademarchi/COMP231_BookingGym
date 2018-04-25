<%@ Page Title="Register a Timetable" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterTimetable.aspx.cs" Inherits="BookingGym.Register_Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3><%:Title %></h3>
<br />
    <asp:Label runat="server" ID="Label1" Text="Select the Class" class="font-weight-bold"></asp:Label><br />
    <br />


    <asp:GridView ID="gvTimetable" runat="server" OnRowCommand="gvTimetable_RowCommand"
        TabIndex="1" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover"
        DataKeyNames="ClassId" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" InsertVisible="False" ReadOnly="True" SortExpression="ClassId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            <asp:BoundField DataField="Starts" HeaderText="Starts" SortExpression="Starts" />
            <asp:BoundField DataField="Finish" HeaderText="Finish" SortExpression="Finish" />
            <asp:BoundField DataField="WeekDay" HeaderText="WeekDay" SortExpression="WeekDay" />
            <asp:ButtonField CommandName="Add" ButtonType="Button" ControlStyle-CssClass="btn btn-success btn-sm" HeaderText="Timetable" Text="Add" />
        </Columns>
    </asp:GridView>


</asp:Content>
