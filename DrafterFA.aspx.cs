using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FootballDrafter
{
    public partial class DrafterFA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentPick"] != null)
            {
                // keep calm and carry on
            }
            else
            {
                Session.Add("CurrentPick", "1");
            }
        }

        protected void updatePicks()
        {
            if (Session["SelectedPlayer"] != null)
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
                try
                {
                    myConnection.Open();

                    SqlDataReader myReader = null;
                    SqlCommand myCommand = new SqlCommand("SELECT * FROM [assignments] WHERE ([playerId] = " + Session["SelectedPlayer"].ToString() + ")", myConnection);

                    myReader = myCommand.ExecuteReader();
                    while (myReader.Read())
                    {
                        String currentRoster = myReader["rosterId"].ToString();
                        String currentRound = myReader["round"].ToString();
                        String currentPick = myReader["pick"].ToString();

                        // if unassigned, use session seeds -- unless selected player is 0
                        if (currentRoster.Equals("0") && !Session["SelectedPlayer"].ToString().Equals("0"))
                        {
                            refreshPicks();
                        }
                        else
                        {
                            RosterListBox.SelectedValue = currentRoster;
                            RoundTextBox.Text = currentRound;
                            PickTextBox.Text = currentPick;
                        }
                    }

                    myConnection.Close();
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void refreshPicks()
        {
            if (Session["CurrentPick"] != null)
            {
                SqlConnection pickConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
                try
                {
                    String currentPick = Session["CurrentPick"].ToString();

                    pickConnection.Open();

                    SqlDataReader pickReader = null;
                    SqlCommand pickCommand = new SqlCommand("SELECT * FROM [picks] WHERE ([pick] = " + currentPick + " AND [leagueId] = 1)", pickConnection);

                    pickReader = pickCommand.ExecuteReader();
                    while (pickReader.Read())
                    {
                        String currentRoster = pickReader["rosterId"].ToString();
                        String currentRound = pickReader["round"].ToString();

                        RosterListBox.SelectedValue = currentRoster;
                        RoundTextBox.Text = currentRound;
                        PickTextBox.Text = currentPick;
                    }

                    pickConnection.Close();
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void initializePick()
        {
            SqlConnection pickConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
            try
            {
                pickConnection.Open();

                SqlDataReader pickReader = null;
                SqlCommand pickCommand = new SqlCommand("SELECT MAX([pick])+1 FROM [assignments]", pickConnection);

                pickReader = pickCommand.ExecuteReader();
                while (pickReader.Read())
                {
                    Session.Add("CurrentPick", pickReader[0].ToString());
                }

                pickConnection.Close();
            }
            catch (Exception ex)
            {
            }
        }

        protected void QBsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", QBsListBox.SelectedValue);
            RBsListBox.ClearSelection();
            WRsListBox.ClearSelection();
            TEsListBox.ClearSelection();
            KsListBox.ClearSelection();
            DSTsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void RBsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", RBsListBox.SelectedValue);
            QBsListBox.ClearSelection();
            WRsListBox.ClearSelection();
            TEsListBox.ClearSelection();
            KsListBox.ClearSelection();
            DSTsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void WRsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", WRsListBox.SelectedValue);
            QBsListBox.ClearSelection();
            RBsListBox.ClearSelection();
            TEsListBox.ClearSelection();
            KsListBox.ClearSelection();
            DSTsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void TEsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", TEsListBox.SelectedValue);
            QBsListBox.ClearSelection();
            RBsListBox.ClearSelection();
            WRsListBox.ClearSelection();
            KsListBox.ClearSelection();
            DSTsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void DSTsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", DSTsListBox.SelectedValue);
            QBsListBox.ClearSelection();
            RBsListBox.ClearSelection();
            WRsListBox.ClearSelection();
            TEsListBox.ClearSelection();
            KsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void KsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Add("SelectedPlayer", KsListBox.SelectedValue);
            QBsListBox.ClearSelection();
            RBsListBox.ClearSelection();
            WRsListBox.ClearSelection();
            TEsListBox.ClearSelection();
            DSTsListBox.ClearSelection();
            initializePick();
            updatePicks();
        }

        protected void AssignButton_Click(object sender, EventArgs e)
        {
            if (Session["SelectedPlayer"] != null)
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
                try
                {
                    myConnection.Open();

                    SqlCommand myCommand = new SqlCommand("UPDATE [assignments] SET [rosterId] = " + RosterListBox.SelectedValue +
                        ", [round] = " + RoundTextBox.Text + ", [pick] = " + PickTextBox.Text + " WHERE ([playerId] = " +
                        Session["SelectedPlayer"] + ")", myConnection);

                    myCommand.ExecuteNonQuery();

                    myConnection.Close();
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    QBsListBox.ClearSelection();
                    RBsListBox.ClearSelection();
                    WRsListBox.ClearSelection();
                    TEsListBox.ClearSelection();
                    DSTsListBox.ClearSelection();
                    KsListBox.ClearSelection();
                    RosterListBox.ClearSelection();
                    Session.Add("SelectedPlayer", "0");
                    updatePicks();
                }
            }
        }

        protected void UnAssignButton_Click(object sender, EventArgs e)
        {
            if (Session["SelectedPlayer"] != null)
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
                try
                {
                    myConnection.Open();

                    SqlCommand myCommand = new SqlCommand("UPDATE [assignments] SET [rosterId] = 0, [round] = 0, [pick] = 0 WHERE ([playerId] = " +
                        Session["SelectedPlayer"] + ")", myConnection);

                    myCommand.ExecuteNonQuery();

                    myConnection.Close();
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    QBsListBox.ClearSelection();
                    RBsListBox.ClearSelection();
                    WRsListBox.ClearSelection();
                    TEsListBox.ClearSelection();
                    DSTsListBox.ClearSelection();
                    KsListBox.ClearSelection();
                    RosterListBox.ClearSelection();
                    Session.Add("SelectedPlayer", "0");
                    updatePicks();
                }
            }
        }
    }
}