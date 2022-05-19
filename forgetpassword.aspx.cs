using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace banking_m_passbook
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                {
                    if (Emailtxt.Text == "")
                    {
                        lblSuccessMessage.Visible = false;
                        lblErrorMessage.Visible = true;
                        lblErrorMessage.Text = "Please enter your registered email id.";
                        return;
                    }
                    string account_name = string.Empty;
                    string password = string.Empty;

                    SqlConnection con = new SqlConnection(strcon);
                    {
                        SqlCommand cmd = new SqlCommand("SELECT account_name, password FROM user_credential_tb4 WHERE Email_id = @Email_id", con);
                        {
                            cmd.Parameters.AddWithValue("@Email_id", Emailtxt.Text.Trim());
                            cmd.Connection = con;
                            con.Open();
                            SqlDataReader sdr = cmd.ExecuteReader();
                            {
                                if (sdr.Read())
                                {
                                    account_name = sdr["account_name"].ToString();
                                    password = sdr["password"].ToString();
                                }
                            }
                            con.Close();
                        }
                    }
                    if (!string.IsNullOrEmpty(password))
                    {
                        MailMessage mm = new MailMessage("sender@gmail.com", Emailtxt.Text.Trim());
                        mm.Subject = "Password Recovery";
                        mm.Body = String.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", account_name, password);
                        mm.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.EnableSsl = true;

                        NetworkCredential NetworkCred = new NetworkCredential();
                        NetworkCred.UserName = "optimusreigns123@gmail.com";
                        NetworkCred.Password = "optimusreigns1234567890";
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = NetworkCred;
                        smtp.Port = 587;
                        smtp.Send(mm);
                        lblErrorMessage.Visible = false;
                        lblSuccessMessage.Visible = true;
                        //lblMessage.ForeColor = Color.Green;
                        lblSuccessMessage.Text = "Password has been sent to your registered email address.";
                    }
                    else
                    {
                        lblSuccessMessage.Visible = false;
                        lblErrorMessage.Visible = true;
                        //lblMessage.ForeColor = Color.Red;
                        lblErrorMessage.Text = "This email address does not match our records.";
                    }
                }
            }
            catch (Exception ex)

            {
                // Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write(ex.Message);
            }
        }
    }

}