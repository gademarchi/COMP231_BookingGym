<%@ Page Title="View Timetable" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewTimetable.aspx.cs" Inherits="BookingGym.ViewTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3><%:Title %></h3>
<br />
    <asp:GridView ID="gvTimetables" runat="server" AutoGenerateColumns="False" CssClass="table table-hover" CellPadding="4" DataKeyNames="TimetableId" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            <asp:BoundField DataField="WeekDay" HeaderText="WeekDay" SortExpression="WeekDay" />
            <asp:BoundField DataField="Starts" HeaderText="Starts" SortExpression="Starts" />
            <asp:BoundField DataField="Finish" HeaderText="Finish" SortExpression="Finish" />
            <asp:BoundField DataField="TimetableId" HeaderText="TimetableId" InsertVisible="False" ReadOnly="True" SortExpression="TimetableId" />
        </Columns>
    </asp:GridView>




</asp:Content>
