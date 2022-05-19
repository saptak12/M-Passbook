using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace banking_m_passbook
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

       

        protected void Page_Load(object sender, EventArgs e)

        {
            string ID = "";
            if (Session["ID"] != null)
            {
             ID=  Session["ID"].ToString();
            }


            SqlConnection con = new SqlConnection(strcon);
            con.Open();


            SqlCommand cmd = new SqlCommand("select account_name from user_credential_tb4 where user_id= '"+ID+"'  ",con);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection= con;

            string temp = "";

            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                temp += rd["account_name"];
            }
            con.Close();
            lbltest.Text = "WELCOME    " + temp;

        }
        //protected void passbookbtn_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        Response.Redirect("passbook.aspx");

        //    }

        //    catch { }


        //}

        //protected void balancebtn_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        Response.Redirect("balance.aspx");

        //    }


        //    catch { }

        //}

        //protected void changepin_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("forgetpassword.aspx");
        //}

        //protected void settings_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("settings.aspx");
        //}
    }
  
           
}
