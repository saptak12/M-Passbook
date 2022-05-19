using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace banking_m_passbook
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          /*  try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State== System.Data.ConnectionState.Closed )
                {
                   
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_credential_tb4 (account_name,password,user_id,IFSC_code,DOB,Contact_no,Address,Email_id,City,Role,M_pin) values (@account_name,@password,@user_id,@IFSC_code,@DOB,@Contact_no,@Address,@Email_id,@City,@Role,@M_pin)",con);

                cmd.Parameters.AddWithValue("@account_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@IFSC_code", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pin", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Role", "to defined");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registration successfull. Go Login page');</script>");



            }
            catch(Exception ex)
 
            {
                // Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write(ex.Message);
            }

       */ }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }








        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_credential_tb4 (account_name,M_pin,user_id,IFSC_code,DOB,Contact_no,Address,Email_id,City,Role,Pincode) values (@account_name,@M_pin,@user_id,@IFSC_code,@DOB,@Contact_no,@Address,@Email_id,@City,@Role,@Pincode)", con);

                

                cmd.Parameters.AddWithValue("@account_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pin",  TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@IFSC_code", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Role", "to defined");
               
                cmd.ExecuteNonQuery();
                con.Close();
               
                Response.Write("<script>alert('Registration successfull. Go Login page');</script>");
                


            }
            catch (Exception ex)

            {
                // Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write(ex.Message);
            }

        }
    }
    }
