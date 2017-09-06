<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="FootballDrafter._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome The Drafter!</h2>
    <p>
        When using this application please use the filters at the top of the page to narrow
        down selections. From there, select records in the results pane to load the player
        window (with additional details and information).</p>
        <p>See a clean results screen <a href="ResultsTeam.aspx">HERE</a>.</p>
    <hr />
    <h2>
        About
    </h2>
    <p>
        Application <a href="Drafter.aspx">d</a>eveloped August 2012 by Corey H<a href="Admin.aspx">a</a>rt.</p>
</asp:Content>
