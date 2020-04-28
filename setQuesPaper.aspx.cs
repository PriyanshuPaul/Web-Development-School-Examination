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
    public partial class setQuesPaper : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["shcon"];
        HttpCookie ad;
        SqlConnection con;
        SqlCommand cmd;

        SqlCommand rcmd;
        SqlDataReader rdr;

        SqlCommand qcmd;
        SqlDataReader qdr;

        string qry;
        string nqry;
        string test;
        int qid;
        int ans;
        int flag = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ntest_Click(object sender, EventArgs e)
        {
            if (testlist.Visible)
            {
                testname.Visible = true;
                testlist.Visible = false;
                ntest.Text = "Old Test";
            }
            else
            {
                testname.Visible = false;
                testlist.Visible = true;
                ntest.Text = "New Test";

            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                msg1.Text = "";
                msg2.Text = "";
                msg3.Text = "";
                msg4.Text = "";
                msg5.Text = "";
                msg6.Text = "";
                msg7.Text = "";

                if (RadioButton1.Checked)
                    ans = 1;
                if (RadioButton2.Checked)
                    ans = 2;
                if (RadioButton3.Checked)
                    ans = 3;
                if (RadioButton4.Checked)
                    ans = 4;
                if (testlist.Visible)
                {
                    test = testlist.Text;
                }
                else
                {
                    if (testname.Text == "")
                    {
                        msg1.Text = "Enter the test name";
                        flag = 0;
                    }
                    else
                    {
                        con.Open();
                        nqry = "select * from QuestionMaster where settype='" + testname.Text + "'";
                        rcmd = new SqlCommand(nqry, con);
                        rdr = rcmd.ExecuteReader();
                        if (rdr.HasRows)
                        {
                            msg1.Text = "test name aldready exist";
                            flag = 0;
                        }
                        test = testname.Text;
                        con.Close();
                    }
                }
                if (string.IsNullOrEmpty(question.Text.Trim()) )
                {
                    msg2.Text = "Enter the question";
                    flag = 0;
                }
                if (opt1.Text == "" || opt1.Text == " ")
                {
                    msg3.Text = "Enter Option 1";
                }
                if (opt2.Text == "" || opt2.Text == " ")
                {
                    msg4.Text = "Enter Option 2";
                }
                if (opt1.Text == "" || opt1.Text == " ")
                {
                    msg5.Text = "Enter Option 3";
                }
                if (opt1.Text == "" || opt1.Text == " ")
                {
                    msg6.Text = "Enter Option 4";
                }
                if (flag != 0)
                {
                    con.Open();
                    qcmd = new SqlCommand("select MAX(qid) from QuestionMaster", con);
                    qdr = qcmd.ExecuteReader();
                    qdr.Read();
                    if (qdr.IsDBNull(0))
                    {
                        qid = 1;
                    }
                    else
                    {
                        qid = Convert.ToInt16(qdr.GetValue(0)) + 1;
                    }
                    con.Close();
                    con.Open();
                    qry = "insert into QuestionMaster values (" + qid + ",'" + question.Text + "','" + test + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "'," + ans + ")";
                    cmd = new SqlCommand(qry, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    msg7.Text = "Question Submitted";
                    Response.Redirect("setQuespaper.aspx?msg='" + msg7.Text + "'");
                }
            }
        }


    }
}