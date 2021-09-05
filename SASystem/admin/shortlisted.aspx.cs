using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem.admin
{
    public partial class shortlisted : System.Web.UI.Page
    {
        public string AcadSession;
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.Visible = true;
            //GridView1.UseAccessibleHeader = true;
            //GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            lblsession.Text = GridView1.Rows[0].Cells[7].Text;
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportCSV();
        }

        private void ExportCSV()
        {
            using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                {
                    using (SqlCommand cmd = new SqlCommand("select tblApplicants.FName + ' '+ tblApplicants.MName + ' '+ tblApplicants.LName as 'fullname' , tblApplicants.Gender, tblApplicationDetails.Email, tblApplicants.Phone, tblApplicants.state, tblApplicants.lga, tblApplicationDetails.jambNo, tblApplicationDetails.AdmissionNo, tblApplicationDetails.SchoolName, tblApplicationDetails.CGPA, tblApplicationDetails.AcademicSession from tblApplicationDetails inner join tblApplicants on tblApplicationDetails.Email = tblApplicants.Email inner join tblSession on tblSession.SessionName = tblApplicationDetails.AcademicSession where ApplicationStatus = 'Successful' and tblSession.status='1'"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);

                                //Build the CSV file data as a Comma separated string.
                                string csv = string.Empty;

                                foreach (DataColumn column in dt.Columns)
                                {
                                    //Add the Header row for CSV file.
                                    csv += column.ColumnName + ',';
                                }

                                //Add new line.
                                csv += "\r\n";

                                foreach (DataRow row in dt.Rows)
                                {
                                    foreach (DataColumn column in dt.Columns)
                                    {
                                        //Add the Data rows.
                                        csv += row[column.ColumnName].ToString().Replace(",", ";") + ',';
                                    }

                                    //Add new line.
                                    csv += "\r\n";
                                }
                                foreach (GridViewRow rows in GridView1.Rows)
                                {
                                    Label lblsession = (Label)rows.FindControl("lblsession");
                                    AcadSession = lblsession.Text;

                                }
                                //Download the CSV file.
                                Response.Clear();
                                Response.Buffer = true;
                                Response.AddHeader("content-disposition", "attachment;filename=" + AcadSession.ToString() + ".csv");
                                Response.Charset = "";
                                Response.ContentType = "application/text";
                                Response.Output.Write(csv);
                                Response.Flush();
                                Response.End();
                            }
                        }
                    }
                }
            }
        }
    }
}