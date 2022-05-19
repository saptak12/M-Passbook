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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
            
        {
            if (Session["ID"] != null)
            {
                useridd.Text = Session["ID"].ToString();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                if (useridd.Text != "")
                {
                    SqlCommand cmd = new SqlCommand("SELECT * from user_transasction_details where user_id = @useridd", con);
                    cmd.Parameters.AddWithValue("@USERIDd", int.Parse(useridd.Text));
                    DataTable dtbl = new DataTable();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dtbl);
                    gvpassbook.DataSource = dtbl;
                    ViewState["dtbl1"] = dtbl;
                    gvpassbook.DataBind();
                    
                    }
                }
            catch { }
            }

        protected void srchbtn_Click(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                useridd.Text = Session["ID"].ToString();
            }
            try
            {
                if (useridd.Text != "")
                {
                    SqlConnection con = new SqlConnection(strcon);

                    SqlCommand cmd = new SqlCommand("SELECT * from user_transasction_details where Date = '" + srchtxt.Text + "' and user_id = @useridd", con);
                    cmd.Parameters.AddWithValue("@USERIDd", int.Parse(useridd.Text));

                    DataTable dtbl = new DataTable();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);


                    sda.Fill(dtbl);
                    gvpassbook.DataSource = dtbl;
                    ViewState["dtbl1"] = dtbl;
                    gvpassbook.DataBind();
                }
            }
            catch (Exception eex)
            {
                Response.Write(eex.Message);
            }
        }
    }
    }
                


       
   
        //  protected void Button1_Click(object sender, EventArgs e)
        //{
        //  try
        //{
        //  SqlConnection con = new SqlConnection(strcon);
        //if (con.State ==ConnectionState.Closed)
        //{

        //  con.Open();
        //}
        //if (useridd.Text != "")
        //{
        //  SqlCommand cmd = new SqlCommand("SELECT * from user_transasction_details where user_id = @useridd", con);
        //cmd.Parameters.AddWithValue("@USERIDd", int.Parse(useridd.Text));
        //DataTable dtbl = new DataTable();
        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
        // sda.Fill(dtbl);
        //gvpassbook.DataSource = dtbl;
        //ViewState["dtbl1"] = dtbl;
        //gvpassbook.DataBind();
        //if (!string.IsNullOrEmpty(srchtxt.Text.Trim()))
        //{
        //  {
        //    string sql = "SELECT account_name, Date, balance FROM user_transaction_details";
        //  if (!string.IsNullOrEmpty(srchtxt.Text.Trim()))
        //{
        //   sql += " WHERE debit LIKE @  '"+srchtxt.Text.Trim()+"'";
        // cmd.Parameters.AddWithValue("@debit", srchtxt.Text.Trim());
        // }
        //cmd.CommandText = sql;
        // }
        //}
        //} 
        //}

        //catch (Exception eex)
        //{
        //  Response.Write(eex.Message);
        //}
        // try
        //   {
        //    SqlConnection con = new SqlConnection(strcon);
        //  if (con.State== System.Data.ConnectionState.Closed )
        //    {

        //    con.Open();
        //  }
        //SqlCommand cmd = new SqlCommand
    

  
    //}
//}