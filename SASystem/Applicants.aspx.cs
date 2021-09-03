using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SASystem
{
    public partial class Applicants : System.Web.UI.Page
    {
        string Config = ConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Config);
            SqlCommand cmd = new SqlCommand("insert into tblApplicants (FName,LName,MName,Gender,Email,Phone,Disability,State,LGA,NOKName,NOKPhone,Address,Status,DateSubmitted,Roletypes) values(@FName,@LName,@MName,@Gender,@Email,@Phone,@Disability,@State,@LGA,@NOKName,@NOKPhone,@Address,@Status,@DateSubmitted,@Roletypes)", con);

            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FName", txtFirstName.Value);
            cmd.Parameters.AddWithValue("@LName", txtLastName.Value);
            cmd.Parameters.AddWithValue("@MName", txtMiddleName.Value);
            cmd.Parameters.AddWithValue("@Gender", dpGender.SelectedValue);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Value);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Value);
            cmd.Parameters.AddWithValue("@Disability", txtDisability.Value);
            cmd.Parameters.AddWithValue("@State", dpstate.SelectedValue);
            cmd.Parameters.AddWithValue("@LGA", dpLGA.SelectedValue);
            cmd.Parameters.AddWithValue("@NOKName", txtNOKName.Value);
            cmd.Parameters.AddWithValue("@NOKPhone", txtNOKPhone.Value);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Value);
            cmd.Parameters.AddWithValue("@Status","1");
            cmd.Parameters.AddWithValue("@DateSubmitted", txtDate.Value);
            cmd.Parameters.AddWithValue("@Roletypes", "Applicant");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new SqlCommand("insert into tblUsers (Name,Email,Pass_word,LoginStatus) values (@Name,@Email,@Pass_word,@LoginStatus)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", txtFirstName.Value);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Value);
            //cmd.Parameters.AddWithValue("@Phone", txtPhone.Value);
            cmd.Parameters.AddWithValue("@Pass_word", "True");
            cmd.Parameters.AddWithValue("@LoginStatus", "True");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string message = "Details save Successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += Request.Url.AbsoluteUri;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }
    }
}