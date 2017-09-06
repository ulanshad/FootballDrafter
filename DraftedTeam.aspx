<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DraftedTeam.aspx.cs" Inherits="FootballDrafter.DraftedTeam" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: 1.2em;
        }
    </style>
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        <strong>Results By Team</strong> (<a href="DraftedRound.aspx">Round</a>) - <a href="ResultsTeam.aspx">Clean</a></p>
    <table width="100%">
        <tr>
            <td>
                <p>
                    <strong>Rose/Odrobina</strong></p>
                <asp:GridView ID="DraftedGridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource1" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Skeltons</strong></p>
                <asp:GridView ID="DraftedGridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource2" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Kozlowski</strong></p>
                <asp:GridView ID="DraftedGridView3" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource3" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Miles</strong></p>
                <asp:GridView ID="DraftedGridView4" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource4" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Fedick</strong></p>
                <asp:GridView ID="DraftedGridView5" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource5" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="5" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <strong>Miller</strong></p>
                <asp:GridView ID="DraftedGridView6" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource6" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="6" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Jankowiak/Elwell</strong></p>
                <asp:GridView ID="DraftedGridView7" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource7" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="7" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Elgie</strong></p>
                <asp:GridView ID="DraftedGridView8" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource8" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="8" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Carbone</strong></p>
                <asp:GridView ID="DraftedGridView9" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource9" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="9" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Cristina</strong></p>
                <asp:GridView ID="DraftedGridView10" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource10" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="10" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <strong>Hart</strong></p>
                <asp:GridView ID="DraftedGridView11" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource11" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="11" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Krause</strong></p>
                <asp:GridView ID="DraftedGridView12" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource12" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="12" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Mazierski</strong></p>
                <asp:GridView ID="DraftedGridView13" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource13" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="13" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>Flynn/Kabel</strong></p>
                <asp:GridView ID="DraftedGridView14" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="DraftedDataSource14" ForeColor="#333333" GridLines="None" Width="190px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pick" HeaderText="#" SortExpression="pick">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="player" HeaderText="Player" ReadOnly="True" SortExpression="player">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Font-Bold="True" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Size="X-Small" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="DraftedDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:FantasyFootballConnectionString %>"
                    SelectCommand="SELECT [pick], [player] FROM [drafted_show] WHERE ([rosterId] = @round) ORDER BY [pick]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="14" Name="round" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;
            </td>
            <td>&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
