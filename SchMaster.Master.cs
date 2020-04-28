using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolApp
{
    public partial class SchMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["Uname"]) != "")
            {
                ltMsg.Text = "Welcome " + Convert.ToString(Session["Uname"]);
                if (Convert.ToString(Session["UType"]) == "s")
                {

               
              
                    tr.Visible = true;
                    rep.Visible = true;
                    ms.Visible = false;
                }
                else
                {
                    tr.Visible = false;
                    rep.Visible = true;
                    ms.Visible = true;
                }
                lnkLogin.Visible = false;
                lnkSignup.Visible = false;
                lnkLogout.Visible = true;
            }
            else
            {
                lnkLogin.Visible = true;
                lnkSignup.Visible = true;
                lnkLogout.Visible = false;
                ms.Visible = false;
                tr.Visible = false;
                rep.Visible = false;
            }
            //  if(Convert.ToString(Session["Uid"]))
        }


    }
}