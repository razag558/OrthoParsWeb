﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace rstemenu
{
    public partial class sadmin1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  if (!Page.User.IsInRole("Admin"))
           //     Response.Redirect("Login.aspx");

            string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
            System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
            string sRet = oInfo.Name;
            if (sRet == "default.aspx" || sRet == "Default.aspx" || sRet == "default"  ||  sRet == "All_users.aspx")
            {
                name.Visible = true;

            }
            else if (sRet == "Updating_user_record.aspx"  )
            {
                backbuttonofeditpage.Visible = true;
            }
            else if (sRet == "User_Complete_record.aspx" )
            {
                backbuttonofcompleterecord.Visible = true;
            }
            else
            {
                backbutton.Visible = true;
            }

        


        }
    }
}