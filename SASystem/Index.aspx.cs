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
    public partial class Index : System.Web.UI.Page
    {
        private static string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTotal();
            }
        }
        private void GetTotal()
        {
            try
            {
                using (SqlConnection _con = new SqlConnection(_dbcon))
                {
                    //count total applications
                    SqlCommand cmd = new SqlCommand("select count(*) from tblApplicationDetails;", _con);
                    _con.Open();
                    lblApplications.InnerText = cmd.ExecuteScalar().ToString();
                    //count total applicants
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select distinct count(*) from tblApplicants;";
                    lblLGA.InnerText = cmd.ExecuteScalar().ToString();
                    //count primary and secondary students
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from tblApplicants where SchoolCategory='Primary' or SchoolCategory='Secondary';";
                    lblChildren.InnerText = cmd.ExecuteScalar().ToString();
                    //count tertairy students
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from tblApplicants where SchoolCategory='Tertiary';";
                    lblChildren.InnerText = cmd.ExecuteScalar().ToString();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}