using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Security.Cryptography;

namespace SASystem.admin
{
    public partial class add_user : System.Web.UI.Page
    {
        string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string Role = GetCookie(1).ToString();
                //if (Role == "Admin")
                //{
                //    UpdatePanel1.Visible = false;
                //    lblHide.Text = "Sorry!, you have no access to this page";
                //    lblHide.ForeColor = System.Drawing.Color.Red;
                //}


            }
        }
        private string GetCookie(int index)
        {
            string cookieName = FormsAuthentication.FormsCookieName;
            HttpCookie authCookie = Context.Request.Cookies[cookieName];
            FormsAuthenticationTicket authTicket = null;
            authTicket = FormsAuthentication.Decrypt(authCookie.Value);

            string userData = authTicket.Name;
            string[] userDataSplit = userData.Split("|".ToCharArray());
            return userDataSplit[index].ToString();

        }

        protected void btnAddUser_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    if (ddUserRole.Value=="0")
                    {
                        lblMsg.InnerText = "Please select Role";
                        return;
                    }
                    SHA256 sha256Hash = SHA256.Create();
                    string EncryptedPassword = PasswordHash.GetMyHashedPasswordHash(sha256Hash, txtPhone.Value.ToString().Trim());
                    using (SqlConnection _con=new SqlConnection(_dbcon))
                    {
                        SqlCommand cmd = new SqlCommand("if not exists(select email, phone from tblUsers where Email!=@Email and Phone!=@Phone) begin insert into tblUsers (Name, Email, Phone, Pass_word, LoginStatus, RoleType) values (@Name, @Email, @Phone, @Pass_word, @LoginStatus, @RoleType) end;", _con);
                        cmd.Parameters.AddWithValue("Name", txtName.Value.Trim());
                        cmd.Parameters.AddWithValue("Email", txtEmail.Value.Trim());
                        cmd.Parameters.AddWithValue("Phone", txtPhone.Value.Trim());
                        cmd.Parameters.AddWithValue("Pass_word", EncryptedPassword.Trim());
                        cmd.Parameters.AddWithValue("RoleType", ddUserRole.Value.Trim());
                        cmd.Parameters.AddWithValue("LoginStatus", true);
                        cmd.Connection = _con;
                        _con.Open();
                        var result = cmd.ExecuteNonQuery();
                        if (result>0)
                        {
                            lblMsg.InnerText = "User added successfully";
                        }
                        else
                        {
                            lblMsg.InnerText = "User not added, make sure email and phone is never in use already";
                        }
                        txtEmail.Value = "";
                        txtPhone.Value = "";
                        txtName.Value = "";
                        ddUserRole.Value = "0";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMsg.InnerText = "error, try again";
            }
        }
    }
}