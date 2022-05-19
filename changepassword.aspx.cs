using System;
using System.Configuration;
using System.Data.SqlClient;

namespace banking_m_passbook
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = "";
            if (Session["ID"] != null)
            {
                ID = Session["ID"].ToString();
            }
        }
        protected void ButtonChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update login set Password=@Password where account_name='" + Session["ID"].ToString() + "'", con);
           
               
                cmd.Parameters["@Password"].Value = TextBoxNewpassword.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                lbl_pwdmsg.Text = "Password changed Successfully";
            
           


        }
            catch { }
        }
    }
}