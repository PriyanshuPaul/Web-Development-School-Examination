using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace SchoolApp
{
    public partial class Signup : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["shcon"];

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "" || txtPassword.Text == "")
                 lblmsg.Text = "Please enter correct username or password";
            else if (txtPassword.Text != txtConfirmPassword.Text)
                lblmsg.Text="Passwords do not match";
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    bool exists = false;
                    
                        using (SqlCommand cmd = new SqlCommand("select count(*) from UserMaster where UserId = @UserId", sqlCon))
                        {
                            cmd.Parameters.AddWithValue("UserId", txtUserName.Text);
                            exists = (int)cmd.ExecuteScalar() > 0;
                        }
                        if (exists)
                        {
                            lblmsg.Text = "This username has been using by another user.";
                            clear();
                        }
                        else
                        {

                            SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                            sqlCmd.CommandType = CommandType.StoredProcedure;
                            sqlCmd.Parameters.AddWithValue("@UserId", txtUserName.Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@FistName", txtFirstName.Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                            sqlCmd.ExecuteNonQuery();
                            Response.Redirect("Home.aspx");
                          //  lblmsg.Text = "User Registered";
                        }
                }
            }
        }
        void clear()
        {
            txtFirstName.Text = txtLastName.Text = txtEmail.Text = txtContact.Text = txtUserName.Text = txtPassword.Text = txtConfirmPassword.Text = "";
        }

       
    }
}


            

            
           
            // if exists, show a message error
          