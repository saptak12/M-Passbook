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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                ID = Session["ID"].ToString();
            }



        }

        protected void ButtonChangePassword_Click(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {

                    con.Open();
                }


                SqlDataAdapter SQLAdapter = new SqlDataAdapter("select*from user_credential_tb4 where M_pin='" + TextBoxOldpassword.Text + "'", con);
                DataTable DT = new DataTable();
                SQLAdapter.Fill(DT);

                if (DT.Rows.Count == 0)
                {
                    lbl_msg.Text = "Invalid current password";
                    lbl_msg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    SQLAdapter = new SqlDataAdapter("update user_credential_tb4 set M_pin='" + TextBoxNewpassword.Text + "' where user_id='" + Session["ID"].ToString() + "'",con);
                    SQLAdapter.Fill(DT);
                    lbl_msg.Text = "Password changed successfully";
                    lbl_msg.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch { }
        }
    }
}