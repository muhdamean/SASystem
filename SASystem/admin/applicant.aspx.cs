using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem
{
    public partial class applicant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Record();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.Record();
        }

        private void Record()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {//SELECT tblApplicants.[Id], tblApplicants.[FName] + ' ' + tblApplicants.[LName] + ' ' + tblApplicants.[MName] as 'fullname', tblApplicants.[Gender], tblApplicants.[Email], tblApplicants.[Phone], tblApplicants.[State], tblApplicants.[LGA], tblApplicants.[Disability], tblApplicationDetails.ApplicationStatus FROM tblApplicants inner join tblApplicationDetails on tblApplicationDetails.Id = tblApplicants.id inner join tblSession on tblSession.SessionName = tblApplicationDetails.AcademicSession
                    string sql = "SELECT tblApplicants.[Id], tblApplicants.[FName] +' '+ tblApplicants.[LName] + ' '+ tblApplicants.[MName] as 'fullname', tblApplicants.[Gender], tblApplicants.[Email], tblApplicants.[Phone], tblApplicants.[State], tblApplicants.[LGA], tblApplicants.[Disability],tblApplicants.status, tblApplicationDetails.AcademicSession, tblApplicationDetails.ApplicationStatus FROM tblApplicants inner join tblApplicationDetails on tblApplicationDetails.Id = tblApplicants.id inner join tblSession on tblSession.SessionName = tblApplicationDetails.AcademicSession";
                    if (txtState.Value.Trim() != null && txtLGA.Value != null)
                    {
                        sql += " WHERE tblApplicants.state LIKE @state + '%' and tblApplicants.lga LIKE @lga + '%' and tblSession.status='1'";
                        cmd.Parameters.AddWithValue("@state", txtState.Value.Trim());
                        cmd.Parameters.AddWithValue("@lga", txtLGA.Value.Trim());
                    }
                    else if ((txtState.Value.Trim() == null && txtLGA.Value == null) && (txtFromDate.Value.Trim() != null && txtToDate.Value != null))
                    {
                        sql += " WHERE tblApplicants.DateSubmitted between '" + txtFromDate.Value + "' and '" + txtToDate.Value + "'";
                    }
                    else if (txtState.Value.Trim() != null || txtLGA.Value != null)
                    {
                        sql += " WHERE (tblApplicants.state LIKE @state + '%' or tblApplicants.lga LIKE @lga + '%') and tblSession.status='1'";
                        cmd.Parameters.AddWithValue("@state", txtState.Value.Trim());
                        cmd.Parameters.AddWithValue("@lga", txtLGA.Value.Trim());
                    }
                    
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
}