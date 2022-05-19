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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            //Console.WriteLine("\n\nstarted\n\n");
            string ID = "";
            if (Session["ID"] != null)
            {
                ID = Session["ID"].ToString();
            }
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT current_account from user_account_details where account_no = '" + ID + "'  ", con);
               // cmd.Parameters.AddWithValue("@USERRID", int.Parse(userrid.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                cmd.CommandType = System.Data.CommandType.Text;
              
                string temp = "0.00";

               
                while (dr.Read())
                {
                    temp += dr["current_account"];
                }
                con.Close();
                lbltest1.Text = "₹ "+ temp;
            }
            catch (Exception eex)
            {
                Response.Write(eex.Message);
            }
        }
    }
}



                    //  SqlConnection con = new SqlConnection(strcon);
                    //  if (con.State == ConnectionState.Closed)
                    // {
                    //     con.Open();
                    //}
                    // SqlCommand cmd = new SqlCommand("select saving_account,fixed_account,current_balance from user_accountdetails where user_id='" + userid.Text.Trim()+"'");


                


                //  protected void TextBox2_TextChanged(object sender, EventArgs e)
              

                //protected void Button1_Click1(object sender, EventArgs e)
                //      {
                //        try
                

                    //          SqlConnection con = new SqlConnection(strcon);
                    //        if (con.State == ConnectionState.Closed)
                    //      {
                   
                    //    }
                    //  if (userrid.Text != "")
                  

                        // if (dr.Read())
                        //{
                        //  currentblns.Text  = "₹ "+dr.GetValue(0).ToString();
                        //fixedblns.Text = "₹ " + dr.GetValue(1).ToString();
                        //savingblns.Text = "₹ " + dr.GetValue(2).ToString();

                        //Console.WriteLine("balance = " + currentblns.Text);







       // protected void fixedblns_TextChanged(object sender, EventArgs e)
       // {

        //}

        //protected void currentblns_TextChanged(object sender, EventArgs e)
       // {

        //}

        
    //}
//}
//"SELECT current_account,fixed_account,saving_account from user_account_details  where account_no='" + userid.Text.Trim() + "'", con