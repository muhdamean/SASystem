using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.Net;
//using System.Net.Mail;
//using System.Web.Security;
using MimeKit;
using MimeKit.Text;
using MailKit.Security;
using MailKit.Net.Smtp;

namespace SASystem
{
    public partial class register : System.Web.UI.Page
    {
        string Config = ConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
        private int i;
        public string fullname, email, status, role, staffID;
        public string smtpAddress = "smtp.gmail.com";
        public int port = 587;
        public bool enableSSL = true;
        public string emailFromAddress = "edatijibril@gmail.com"; //Sender Email Address  
        public string password = "Edatifag078#"; //Sender Password  U15fag078#
        //public static string emailToAddress = "shuraim811@gmail.com"; //Receiver Email Address  
        public static string subject = "P A N Profile Creation";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Email"] = txtEmail.Value;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");

            SqlConnection con = new SqlConnection(Config);
            SqlCommand cmd = new SqlCommand("insert into tblRegister (Email,Phone,DOB,EducationLevel, regCode,regCodestatus) values(@Email,@Phone,@DOB,@EducationLevel, @regCode, @regCodestatus)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", txtEmail.Value);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Value);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Value);
            cmd.Parameters.AddWithValue("@EducationLevel", dpeducation.SelectedValue);
            cmd.Parameters.AddWithValue("@regCode", r.ToString());
            cmd.Parameters.AddWithValue("@regCodestatus", "0");
            con.Open();
           
            string x = cmd.ExecuteNonQuery().ToString();
            if (x != null)
            {
                string activationUrl = Server.HtmlEncode("https://localhost:44335/Confirm.aspx?id=" + txtEmail.Value.ToString());
                //msg.IsBodyHtml = true;
                string body = "<font color='blue'><h4>Massage from Admin</h4></font>Hello, This Email is to notify you that your profile have been successfully created. <br/><br/>You can now proceed to <a href='" + activationUrl + "'>Login</a> to your account <br/><br/>Your Login Details are below: <br/><br/> <strong>Username :</strong> " + txtEmail.Value.ToString()+ "<br/><br/> <strong> Code :</strong >" + r.ToString();

                //msg.From = new MailAddress(emailFromAddress);
                //msg.To.Add(txtEmail.Value.Trim());
                //msg.Subject = subject;
                //msg.Body = body;
                // create email message
                var email = new MimeMessage();
                email.From.Add(MailboxAddress.Parse(emailFromAddress));
                email.To.Add(MailboxAddress.Parse(txtEmail.Value.Trim()));
                email.Subject = "Test Email Subject";
                email.Body = new TextPart(TextFormat.Html) { Text = body };

                // send email
                //using var smtp = new SmtpClient();
                using (var client = new SmtpClient())
                {
                    client.Connect("smtp.gmail.com", 587, false);

                    // Note: only needed if the SMTP server requires authentication
                  client.Authenticate(emailFromAddress, password);

                    client.Send(email);
                    client.Disconnect(true);
                }
                
             

            }
            string message = "Six (6) digit has been sent to your email , Follow the link and complete your Registration.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += Request.Url.AbsoluteUri;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
           // ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Six (6) digit has been sent to your email , Follow the link and complete your Registration.');", true);
        }
    }
}