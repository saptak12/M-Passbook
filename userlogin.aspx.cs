using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace banking_m_passbook
{
    public partial class WebForm4 : System.Web.UI.Page
       
    {
         string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {  
           
        }

        protected void Button1_Click(object sender, EventArgs e)

        {

           /* try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_credential_tb4 where user_id='" + userid.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write(" login sucessfull");
                        Session["user_id"] = dr.GetValue(2).ToString();
                        Session["password"] = dr.GetValue(1).ToString();
                        Session["role"] = "User";

                    }
                    Session["ID"] = userid.Text;
                   
                    Response.Redirect("homepage.aspx");

                   
                   
                }
                else
                {
                    Response.Write("<script>alert('invalid credential')");
                }
            }
            catch (Exception)
            {

            }

           */ }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgetpassword.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_credential_tb4 where user_id='" + userid.Text.Trim() + "' AND M_pin='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write(" login sucessfull");
                        Session["user_id"] = dr.GetValue(2).ToString();
                        Session["M_pin"] = dr.GetValue(1).ToString();
                        Session["role"] = "User";

                    }
                    Session["ID"] = userid.Text;

                    Response.Redirect("homepage.aspx");



                }
                else
                {

                    lbl1_msg.Text = "invalid credentials";
                    lbl1_msg.ForeColor = System.Drawing.Color.Green;

                    //  Response.Write("<script>alert('Invalid credential.plz enter credential correctly');</script>");
                    //Response.Redirect("userlogin.aspx");
                }
            }
            catch (Exception)
            {

            }

        }
    }
    }
    
