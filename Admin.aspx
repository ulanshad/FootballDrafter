<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Admin.aspx.cs" Inherits="FootballDrafter.Admin" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="DraftedGridView" runat="server" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="playerId" 
    DataSourceID="DraftedDataSource" ForeColor="#333333" GridLines="None" 
    Width="700px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="playerId" HeaderText="ID" ReadOnly="True" 
                SortExpression="playerId" />
            <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" 
                SortExpression="player" />
            <asp:BoundField DataField="round" HeaderText="Round" SortExpression="round" />
            <asp:BoundField DataField="pick" HeaderText="Pick" SortExpression="pick" />
            <asp:BoundField DataField="roster" HeaderText="Roster" 
                SortExpression="roster" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            HorizontalAlign="Left" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="DraftedDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>" 
    SelectCommand="SELECT [playerId], [player], [round], [pick], [roster] FROM [drafted] ORDER BY [pick]">
</asp:SqlDataSource>
    <hr />
    <center>    
    <h1><strong>Reset Draft Picks?</strong></h1>
        <p class="style1"><strong>WARNING: This will reset ALL draft picks!!!</strong></p>
        <asp:Button ID="ResetAssignments" runat="server" Text="Reset" 
            onclick="ResetAssignments_Click" Height="50px" Width="150px" /></center>
</asp:Content>
