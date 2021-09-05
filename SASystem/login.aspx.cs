using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Web.Security;

namespace SASystem
{
    public partial class login : System.Web.UI.Page
    {
        string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    btnLogin.Enabled = false;
                    using (SqlConnection _con = new SqlConnection(_dbcon))
                    {
                        SHA256 sha256Hash = SHA256.Create();
                        string EncryptedPassword = PasswordHash.GetMyHashedPasswordHash(sha256Hash, txtPass.Value.ToString().Trim());
                        SqlCommand cmd = new SqlCommand("select Email, Pass_word, RoleType from tblUsers where Email=@Email and Pass_word=@Pass_word and LoginStatus=@Status", _con);
                        _con.Open();
                        cmd.Parameters.AddWithValue("Email", txtEmail.Value.ToString().Trim());
                        cmd.Parameters.AddWithValue("Pass_word", EncryptedPassword.ToString().Trim());
                        cmd.Parameters.AddWithValue("Status", true);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            string Email = sdr["Email"].ToString().Trim();
                            string Role = sdr["RoleType"].ToString().Trim();
                            string newData = string.Concat(Email, "|", Role);
                            FormsAuthentication.SetAuthCookie(newData, false);
                            //FormsAuthentication.Timeout

                            _con.Close();
                            if (Role=="Admin" || Role=="Stakeholder")
                            {
                                Response.Redirect("~/admin/index.aspx", false);
                            }
                            else
                            {
                                Response.Redirect("~/myapplications.aspx", false);
                            }
                        }
                        else
                        {
                            btnLogin.Enabled = true;
                            lblMsg.InnerText = "Invalid Email/Password!";
                        }
                    }
                }
                catch (Exception)
                {
                    btnLogin.Enabled = true;
                    lblMsg.InnerText = "err!, try again";
                }
            }
        }
    }
}