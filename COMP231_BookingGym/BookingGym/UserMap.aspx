<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserMap.aspx.cs" Inherits="BookingGym.UserMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<script>
    var map;
    function initialize() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: new google.maps.LatLng(48.1293954, 11.556663), // Munich Germany
            zoom: 10
        });
    }

    function newLocation(newLat, newLng) {
        map.setCenter({
            lat: newLat,
            lng: newLng
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>


    <asp:UpdatePanel ID="pnlTest" runat="server">
        <ContentTemplate>
            <div style="height: 60%;" id="map"></div>

            <asp:TextBox ID="txtLat" runat="server" />
            <asp:TextBox ID="txtLong" runat="server" />
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>
