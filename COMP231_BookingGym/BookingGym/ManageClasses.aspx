<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageClasses.aspx.cs" Inherits="BookingGym.ManageClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <asp:GridView ID="gvClasses" runat="server" CssClass="table table-hover" TabIndex="1"
        OnRowUpdating="gvClasses_RowUpdating" OnRowDeleting="gvClasses_RowDeleting"
        AutoGenerateColumns="False" DataKeyNames="ClassId" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" InsertVisible="False" ReadOnly="True" SortExpression="ClassId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            <asp:BoundField DataField="WeekDay" HeaderText="WeekDay" SortExpression="WeekDay" />
            <asp:BoundField DataField="Starts" HeaderText="Starts" SortExpression="Starts" />
            <asp:BoundField DataField="Finish" HeaderText="Finish" SortExpression="Finish" />
            <asp:ButtonField CommandName="Update" Text="Update" ButtonType="Button" ControlStyle-CssClass="btn btn-success btn-sm p-1">
                <ControlStyle CssClass="btn btn-warning btn-sm p-1"></ControlStyle>
            </asp:ButtonField>
            <asp:ButtonField CommandName="Delete" Text="Delete" ButtonType="Button" ControlStyle-CssClass="btn btn-danger btn-sm p-1">
                <ControlStyle CssClass="btn btn-danger btn-sm p-1"></ControlStyle>
            </asp:ButtonField>
        </Columns>
    </asp:GridView>
    <br />
    <div class="form-center">
        <asp:TextBox runat="server" ID="txtClassId" placeholder="ClassId" ReadOnly="true" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtClassName" placeholder="Class Name" CssClass="form-control"></asp:TextBox><br />
        <asp:TextBox runat="server" ID="txtProfessor" placeholder="Professor" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:DropDownList ID="ddlWeekDay" CssClass="form-control" runat="server">
            <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
            <asp:ListItem Value="Monday">Monday</asp:ListItem>
            <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
            <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
            <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
            <asp:ListItem Value="Friday">Friday</asp:ListItem>
            <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
        </asp:DropDownList><br />
        <div class="form-inline">
            <asp:TextBox runat="server" ID="txtClassStarts" placeholder="Class Starts" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtClassFinish" placeholder="Class Finish" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button runat="server" ID="btnUpdate" Text="Update" CssClass="btn btn-secondary" OnClick="btnUpdate_Click" OnClientClick='return confirm("Class Updated Sucessfully!");' />

    </div>




</asp:Content>
