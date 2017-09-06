using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootballDrafter
{
    public partial class QBs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                QBsGridView.Sort("ranking", System.Web.UI.WebControls.SortDirection.Ascending);
            }

        }

        protected void playerFilter_Click(object sender, EventArgs e)
        {

        }

        protected void QBsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {

            // Change default sort order to Descending for certain columns.

            switch (e.SortExpression)
            {

                case "points":

                case "passingYards":

                case "passingTDs":

                case "passingINTs":

                case "rushAttempts":

                case "rushYards":

                case "rushTDs":

                case "fumbles":


                    // Current sort column is different than previous sort column

                    if (e.SortExpression != QBsGridView.SortExpression)
                    {

                        e.SortDirection = SortDirection.Descending;

                    }

                    break;

                default:

                    break;

            }

        }
    }
}