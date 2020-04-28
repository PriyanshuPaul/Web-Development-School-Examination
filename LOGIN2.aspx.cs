using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace SchoolApp.LOGIN_PAGE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["shcon"];

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        HttpCookie ck;
        HttpCookie ad;

        // string connectionString = System.Configuration.ConfigurationManager.AppSettings["shcon"];


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connectionString);
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {


                SqlDataAdapter sqda = new SqlDataAdapter("select count(*)from UserMaster where UserId='" + txtUserName.Text + "'", sqlCon);
                DataTable dta = new DataTable();
                sqda.Fill(dta);
                if (dta.Rows[0][0].ToString() == "1")
                {
                    SqlDataAdapter sda = new SqlDataAdapter("select count(*) from UserMaster where UserId='" + txtUserName.Text + "'and Password='" + txtPassword.Text + "'", sqlCon);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows[0][0].ToString() == "1")
                    {

                        qry = "select FistName +' '+ LastName name,UserType from UserMaster where UserId='" + txtUserName.Text.Trim() + "'and Password='" + txtPassword.Text.Trim() + "'";
                        cmd = new SqlCommand(qry, sqlCon);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt2 = new DataTable();
                        da.Fill(dt2);
                        Session["Uid"] = txtUserName.Text;
                        Session["Uname"] =Convert.ToString( dt2.Rows[0]["name"]);
                        Session["UType"] =Convert.ToString(dt2.Rows[0]["UserType"]);
                        Response.Redirect("../Home.aspx");
                        Session.RemoveAll();
                    }
                    else
                    {
                        msg.Text = "Password entered is wrong";
                        txtPassword.Text = "";
                    }
                }
                else
                {
                    msg.Text = "User ID does not exist";
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                }

            }
        }
    }
}
