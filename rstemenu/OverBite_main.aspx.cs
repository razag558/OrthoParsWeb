using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rstemenu
{
    public partial class OverBite_main : System.Web.UI.Page
    {
      

        protected void positive_overjet_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Positive_overbite.aspx");
        }

        protected void negative_overjet_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Negative_overbite.aspx");
        }

        protected void both_overjet_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Both_negative_positive_overbit.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Checking_Type();
        }


        public void Checking_Type()
        {

            if (Convert.ToString(Session["Preorposttreatment"]) == "Pretreatment")
            {

                if (Convert.ToString(Session["pre_Overbite_type"]) == "Positive")
                {
                    positive_overbite.Text = "Only Positive Overbite is Present (" + Session["pre_Overbite_Sum_Value"].ToString() + ")";

                }
                else if (Convert.ToString(Session["pre_Overbite_type"]) == "Negative")
                {
                    negative_overbite.Text = "Only Negative Overbite is Present (" + Session["pre_Overbite_Sum_Value"].ToString() + ")";

                }
                else if (Convert.ToString(Session["pre_Overbite_type"]) == "Both")
                {
                    both_overbite.Text = "Both +ve & -ve Overbite are Present (" + Session["pre_Overbite_Sum_Value"].ToString() + ")";

                }
            }

            else if (Convert.ToString(Session["Preorposttreatment"]) == "Posttreatment")
            {

                if (Convert.ToString(Session["post_Overbite_type"]) == "Positive")
                {
                    positive_overbite.Text = "Only Positive Overbite is Present (" + Session["post_Overbite_Sum_Value"].ToString() + ")";
                }
                else if (Convert.ToString(Session["post_Overbite_type"]) == "Negative")
                {
                    negative_overbite.Text = "Only Negative Overbite is Present (" + Session["post_Overbite_Sum_Value"].ToString() + ")";
                }
                else if (Convert.ToString(Session["post_Overbite_type"]) == "Both")
                {
                    both_overbite.Text = "Both +ve & -ve Overbite are Present (" + Session["post_Overbite_Sum_Value"].ToString() + ")";
                }
            }

        }


    }
}