﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DSTs.aspx.cs" Inherits="FootballDrafter.DSTs" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .filterHeader
        {
            font-size: medium;
        }
        .filterLead
        {
            width: 95px;
            font-weight: bold;
            background-color: #eee;
        }
        .filterPad
        {
            width: 10px;
        }
        .detailName
        {
            font-size: 1.2em;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <strong><span class="filterHeader">&nbsp;Filters:</span></strong><br />
        <table style="width: 100%;" cellpadding="0">
            <tr>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td class="filterLead">
                    Name
                </td>
                <td width="300px">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="248px"></asp:TextBox>
                </td>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td class="filterLead">
                    Team
                </td>
                <td width="300px">
                    <asp:DropDownList ID="TeamDropDown" runat="server" DataSourceID="TeamDataSource"
                        DataTextField="teamLong" DataValueField="teamShort" Height="20px" Width="220px"
                        AppendDataBoundItems="true">
                        <asp:ListItem Text="ALL SIGNED" Value="x" />
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="TeamDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [teamShort], [teamLong] FROM [teams]"></asp:SqlDataSource>
                </td>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td width="150px">
                    &nbsp;
                </td>
                <td width="150px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td class="filterLead">
                    Assignment
                </td>
                <td width="300px">
                    <asp:DropDownList ID="LeagueDropDown" runat="server" DataSourceID="LeagueDataSource"
                        DataTextField="league" DataValueField="leagueId" Height="20px" Width="100px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="LeagueDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [leagueId], [league] FROM [leagues]"></asp:SqlDataSource>
                    <asp:DropDownList ID="RosterDropDown" runat="server" DataSourceID="RosterDataSource"
                        DataTextField="roster" DataValueField="rosterId" Height="20px" Width="150px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="RosterDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [rosterId], [roster] FROM [rosters] WHERE ([leagueId] = @leagueId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="LeagueDropDown" Name="leagueId" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td class="filterLead">
                    Stats Year
                </td>
                <td width="300px">
                    <asp:DropDownList ID="YearDropDown" runat="server" DataSourceID="YearDataSource"
                        DataTextField="year" DataValueField="yearId" Height="20px" Width="220px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="YearDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [yearId], [year] FROM [years]"></asp:SqlDataSource>
                </td>
                <td class="filterPad">
                    &nbsp;
                </td>
                <td colspan="2">
                    <center>
                        <asp:Button ID="playerFilter" runat="server" Text="Filter" Style="text-align: center"
                            Width="150px" Height="25px" OnClick="playerFilter_Click" /></center>
                </td>
            </tr>
        </table>
    </div>
    <hr />
    <div style="width: 790px; margin: 0px auto;">
        <asp:FormView ID="DSTFormView" runat="server" DataSourceID="DSTDetailDataSource" Width="260px"
            HorizontalAlign="Left">
            <EditItemTemplate>
                playerName:
                <asp:TextBox ID="playerNameTextBox" runat="server" Text='<%# Bind("playerName") %>' />
                <br />
                positionFull:
                <asp:TextBox ID="positionFullTextBox" runat="server" Text='<%# Bind("positionFull") %>' />
                <br />
                teamLong:
                <asp:TextBox ID="teamLongTextBox" runat="server" Text='<%# Bind("teamLong") %>' />
                <br />
                depth:
                <asp:TextBox ID="depthTextBox" runat="server" Text='<%# Bind("depth") %>' />
                <br />
                byeWeek:
                <asp:TextBox ID="byeWeekTextBox" runat="server" Text='<%# Bind("byeWeek") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                playerName:
                <asp:TextBox ID="playerNameTextBox" runat="server" Text='<%# Bind("playerName") %>' />
                <br />
                positionFull:
                <asp:TextBox ID="positionFullTextBox" runat="server" Text='<%# Bind("positionFull") %>' />
                <br />
                teamLong:
                <asp:TextBox ID="teamLongTextBox" runat="server" Text='<%# Bind("teamLong") %>' />
                <br />
                depth:
                <asp:TextBox ID="depthTextBox" runat="server" Text='<%# Bind("depth") %>' />
                <br />
                byeWeek:
                <asp:TextBox ID="byeWeekTextBox" runat="server" Text='<%# Bind("byeWeek") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <strong><span class="detailName">Name</span></strong><span class="detailName"><strong>:
                    <asp:Label ID="playerNameLabel" runat="server" Text='<%# Bind("playerName") %>' />
                    <br />
                </strong></span><strong>Position</strong>:
                <asp:Label ID="positionFullLabel" runat="server" Text='<%# Bind("positionFull") %>' />
                <br />
                <strong>Team</strong>:
                <asp:Label ID="teamLongLabel" runat="server" Text='<%# Bind("teamLong") %>' />
                <br />
                <strong>Depth Chart</strong>:
                <asp:Label ID="depthLabel" runat="server" Text='<%# Bind("depth") %>' />
                <br />
                <strong>Bye Week</strong>:
                <asp:Label ID="byeWeekLabel" runat="server" Text='<%# Bind("byeWeek") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="DSTDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
            SelectCommand="SELECT [playerName], [positionFull], [teamLong], [depth], [byeWeek] FROM [player_detail] WHERE ([playerId] = @playerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DSTsGridView" Name="playerId" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="DSTGridVIew" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataSourceID="DSTDataSource" ForeColor="#333333" GridLines="None" 
            Width="530px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year">
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="points" HeaderText="Points" SortExpression="points" DataFormatString="{0:f2}">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ranking" HeaderText="Ranking" SortExpression="ranking">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="pointsAllowed" HeaderText="Points Allowed" SortExpression="pointsAllowed">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="sacks" HeaderText="Sacks" SortExpression="sacks">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ints" HeaderText="INTs" SortExpression="ints">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="DSTDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
            SelectCommand="SELECT [years].[year], [players_DSTs].[points], [players_DSTs].[ranking], [players_DSTs].[pointsAllowed], [players_DSTs].[sacks], [players_DSTs].[ints] FROM [players_DSTs] INNER JOIN [years] ON [players_DSTs].[yearId] = [years].[yearId] WHERE ([players_DSTs].[playerId] = @playerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DSTsGridView" Name="playerId" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <hr />
    </div>
    <div style="width: 790px; margin: 0px auto;">
        <asp:GridView ID="DSTsGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            CellPadding="4" DataSourceID="DSTsDataSource" ForeColor="#333333" GridLines="None"
            Width="790px" AllowPaging="True" PageSize="32" DataKeyNames="playerId" OnSorting="DSTsGridView_Sorting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName">
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="team" HeaderText="Team" SortExpression="team">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="depth" HeaderText="Depth" SortExpression="depth">
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="byeWeek" HeaderText="Bye" SortExpression="byeWeek">
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="points" HeaderText="Points" SortExpression="points" DataFormatString="{0:f2}">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ranking" HeaderText="Ranking" SortExpression="ranking">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="pointsAllowed" HeaderText="Points Allowed" SortExpression="pointsAllowed">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="sacks" HeaderText="Sacks" SortExpression="sacks">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ints" HeaderText="INTs" SortExpression="ints">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:CommandField ShowSelectButton="True">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Right"
                wrap="True" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="DSTsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
            SelectCommand="SELECT * FROM [players_DSTs] WHERE (([playerName] LIKE '%' + @playerName + '%') AND ((@team = 'x' AND [team] <> 'FA') OR ([team] LIKE '%' + @team + '%')) AND ([rosterId] = @rosterId) AND ([yearId] = @yearId))">
            <SelectParameters>
                <asp:ControlParameter ControlID="NameTextBox" Name="playerName" PropertyName="Text"
                    Type="String" DefaultValue="%" />
                <asp:ControlParameter ControlID="TeamDropDown" Name="team" PropertyName="SelectedValue"
                    Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="RosterDropDown" Name="rosterId" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="YearDropDown" Name="yearId" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
