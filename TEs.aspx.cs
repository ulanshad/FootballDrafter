using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootballDrafter
{
    public partial class TEs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TEsGridView.Sort("ranking", System.Web.UI.WebControls.SortDirection.Ascending);
            }

        }

        protected void playerFilter_Click(object sender, EventArgs e)
        {

        }

        protected void TEsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {

            // Change default sort order to Descending for certain columns.

            switch (e.SortExpression)
            {

                case "points":

                case "receptions":

                case "receivingYards":

                case "receivingTDs":

                case "fumbles":


                    // Current sort column is different than previous sort column

                    if (e.SortExpression != TEsGridView.SortExpression)
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