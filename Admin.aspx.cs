using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FootballDrafter
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ResetAssignments_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["FantasyFootballConnectionString"].ConnectionString);
            try
            {
                myConnection.Open();

                SqlCommand myCommand = new SqlCommand("UPDATE [assignments] SET [rosterId]=0,[round]=0,[pick]=0 WHERE (([pick]<>0)OR([rosterId]<>0)OR([round]<>0))", myConnection);

                myCommand.ExecuteNonQuery();

                myConnection.Close();
            }
            catch (Exception ex)
            {
            }
        }
    }
}