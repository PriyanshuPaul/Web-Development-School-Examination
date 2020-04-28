using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace SchoolApp
{
    public partial class Report: System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        string qry;
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["shcon"];
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con = new SqlConnection(connectionString);
            con.Open();
            if (Convert.ToString(Session["UType"]) == "a")
                qry = "select * from results";
            else
                qry = "select * from results where username='" + Convert.ToString(Session["Uname"]) + "'";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
        }
    }
}