<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DrafterFA.aspx.cs" Inherits="FootballDrafter.DrafterFA" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: 1.2em;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <p class="style1">
            <strong>Select Player:</strong> (<a href="Drafter.aspx">Exclude FA</a>)</p>
        <table style="width: 100%;">
            <tr>
                <td>
                    <p>
                        <strong>Quarterbacks</strong></p>
                    <asp:ListBox ID="QBsListBox" runat="server" DataSourceID="QBsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="QBsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="QBsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <p>
                        <strong>Running Backs</strong></p>
                    <asp:ListBox ID="RBsListBox" runat="server" DataSourceID="RBsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="RBsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="RBsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <p>
                        <strong>Wide Receivers</strong></p>
                    <asp:ListBox ID="WRsListBox" runat="server" DataSourceID="WRsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="WRsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="WRsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="3" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <p>
                        <strong>Tight Ends</strong></p>
                    <asp:ListBox ID="TEsListBox" runat="server" DataSourceID="TEsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="TEsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="TEsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="4" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <p>
                        <strong>Defenses</strong></p>
                    <asp:ListBox ID="DSTsListBox" runat="server" DataSourceID="DSTsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DSTsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="DSTsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="6" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <p>
                        <strong>Kickers</strong></p>
                    <asp:ListBox ID="KsListBox" runat="server" DataSourceID="KsDataSource" DataTextField="playerName"
                        DataValueField="playerId" Rows="15" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="KsListBox_SelectedIndexChanged">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="KsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName] FROM [players] WHERE ([positionId] = @positionId) ORDER BY [playerName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="5" Name="positionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
    <hr />
    <div>
        <table style="width: 100%; vertical-align: top;">
            <tr style="vertical-align: top">
                <td width="25%">
                    <p>
                        <strong>Player to Assign:</strong>
                    </p>
                    <asp:FormView ID="PlayerFormView" runat="server" DataKeyNames="playerId" DataSourceID="PlayerDataSource"
                        Width="220px">
                        <EditItemTemplate>
                            playerId:
                            <asp:Label ID="playerIdLabel1" runat="server" Text='<%# Eval("playerId") %>' />
                            <br />
                            playerName:
                            <asp:TextBox ID="playerNameTextBox" runat="server" Text='<%# Bind("playerName") %>' />
                            <br />
                            positionFull:
                            <asp:TextBox ID="positionFullTextBox" runat="server" Text='<%# Bind("positionFull") %>' />
                            <br />
                            teamLong:
                            <asp:TextBox ID="teamLongTextBox" runat="server" Text='<%# Bind("teamLong") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            playerId:
                            <asp:TextBox ID="playerIdTextBox" runat="server" Text='<%# Bind("playerId") %>' />
                            <br />
                            playerName:
                            <asp:TextBox ID="playerNameTextBox" runat="server" Text='<%# Bind("playerName") %>' />
                            <br />
                            positionFull:
                            <asp:TextBox ID="positionFullTextBox" runat="server" Text='<%# Bind("positionFull") %>' />
                            <br />
                            teamLong:
                            <asp:TextBox ID="teamLongTextBox" runat="server" Text='<%# Bind("teamLong") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <strong><span class="style1">Name:
                                <asp:Label ID="playerNameLabel" runat="server" Text='<%# Bind("playerName") %>' />
                            </span></strong>
                            <br />
                            <strong>Position</strong>:
                            <asp:Label ID="positionFullLabel" runat="server" Text='<%# Bind("positionFull") %>' />
                            <br />
                            <strong>Team</strong>:
                            <asp:Label ID="teamLongLabel" runat="server" Text='<%# Bind("teamLong") %>' />
                            <br />
                            <strong>Roster</strong>:
                            <asp:Label ID="rosterLabel" runat="server" Text='<%# Bind("roster") %>' />
                            <br />
                            <strong>Round</strong>:
                            <asp:Label ID="roundLabel" runat="server" Text='<%# Bind("round") %>' />
                            <br />
                            <strong>Pick</strong>:
                            <asp:Label ID="pickLabel" runat="server" Text='<%# Bind("pick") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="PlayerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [playerId], [playerName], [positionFull], [teamLong], [roster], [round], [pick] FROM [player_detail] WHERE ([playerId] = @playerId)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="playerId" SessionField="SelectedPlayer"
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td width="25%">
                    <p>
                        <strong>Round:</strong>
                    </p>
                    <asp:TextBox ID="RoundTextBox" runat="server" Width="200px"></asp:TextBox>
                    <p>
                        <strong>Pick:</strong>
                    </p>
                    <asp:TextBox ID="PickTextBox" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td width="25%">
                    <p>
                        <strong>League:</strong>
                    </p>
                    <asp:DropDownList ID="LeagueDropDown" runat="server" DataSourceID="LeagueDataSource"
                        DataTextField="league" DataValueField="leagueId" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="LeagueDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [leagueId], [league] FROM [leagues]"></asp:SqlDataSource>
                    <p>
                        <strong>Roster:</strong>
                    </p>
                    <asp:ListBox ID="RosterListBox" runat="server" DataSourceID="RosterDataSource" DataTextField="roster"
                        DataValueField="rosterId" Rows="15" Width="200px"></asp:ListBox>
                    <asp:SqlDataSource ID="RosterDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                        SelectCommand="SELECT [rosterId], [roster] FROM [rosters] WHERE ([leagueId] = @leagueId) ORDER BY [draftOrder]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="LeagueDropDown" Name="leagueId" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td width="25%">
                    <p>
                        &nbsp;</p>
                    <center>
                        <asp:Button ID="AssignButton" runat="server" Text="Assign" Height="35px" Width="130px"
                            OnClick="AssignButton_Click" Font-Bold="True" Font-Size="Medium" />
                        <p>
                            &nbsp;</p>
                        <asp:Button ID="UnAssignButton" runat="server" Text="Clear" Height="22px" Width="80px"
                            OnClick="UnAssignButton_Click" Font-Size="X-Small" /></center>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
