using System;
using System.Collections;
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
    public partial class screenings : System.Web.UI.Page
    {
        public string school, sID, stt;
        protected void Page_PreRender(object o, System.EventArgs e)
        {
            bindRepeater();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (Request.QueryString["id"] != null)
            {
                sID = Request.QueryString["id"].ToString();
                school = "";
                stt = "";
            }
            else if(Request.QueryString["sc"] != null)
            {
                sID = "";
                school = Request.QueryString["sc"].ToString();
                stt = Request.QueryString["st"].ToString();

            }
            
            //Response.Write(school);
        }


        private void bindRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                con.Open();
                string command = "select tblApplicationDetails.*, tblApplicants.*, tblApplicants.FName + ' '+ tblApplicants.MName + ' '+ tblApplicants.LName as 'fullname'  from tblApplicationDetails inner join tblApplicants on tblApplicationDetails.Email = tblApplicants.Email where tblApplicationDetails.id = @id OR (tblApplicationDetails.SchoolCategory = @SchoolCategory and tblApplicationDetails.schoolState = @schoolState ) "; //and ApplicationStatus != 'Successful' or tblApplicationDetails.id=@id  or tblApplicationDetails.SchoolName = @SchoolName
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.Parameters.AddWithValue("@SchoolCategory", school.ToString());
                cmd.Parameters.AddWithValue("@schoolState", stt.ToString());
                cmd.Parameters.AddWithValue("@id", sID.ToString());
                //SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                dt.Clear();
                con.Close();


                //PagedDataSource pageds = new PagedDataSource();
                //DataView dv = new DataView(dt);
                //pageds.DataSource = dv;
                //pageds.AllowPaging = true;
                //pageds.PageSize = 1;
                //if (ViewState["PageNumber"] != null)
                //    pageds.CurrentPageIndex = Convert.ToInt32(ViewState["PageNumber"]);
                //else
                //    pageds.CurrentPageIndex = 0;
                //if (pageds.PageCount > 1)
                //{
                //    rptPaging.Visible = true;
                //    ArrayList pages = new ArrayList();
                //    for (int i = 0; i < pageds.PageCount; i++)
                //        pages.Add((i + 1).ToString());
                //    rptPaging.DataSource = pages;
                //    rptPaging.DataBind();
                //}
                //else
                //{
                //    rptPaging.Visible = false;
                //}
                //Repeater1.DataSource = pageds;
                //Repeater1.DataBind();



            }
        }

        protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ViewState["PageNumber"] = Convert.ToInt32(e.CommandArgument) - 1;
            bindRepeater();
        }

        protected void btnDeny_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                Label email = (Label)item.FindControl("lblemail");

                SqlCommand cmd = new SqlCommand("update tblApplicationDetails set ApplicationStatus = @ApplicationStatus where email = @email", con);
                cmd.Parameters.AddWithValue("@ApplicationStatus", "Rejected");
                cmd.Parameters.AddWithValue("@email", email.Text);
                con.Close();
                con.Open();
                int x = cmd.ExecuteNonQuery();
                Repeater1.DataBind();
                bindRepeater();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Label fullname = (Label)item.FindControl("lblfullname");
            Image img1 = (Image)item.FindControl("Image1");
            Image img2 = (Image)item.FindControl("Image2");
            Image img3 = (Image)item.FindControl("Image3");
            Image4.ImageUrl = img1.ImageUrl;
            Image5.ImageUrl = img2.ImageUrl;
            Image6.ImageUrl = img3.ImageUrl;
            lblMfullname.Text = fullname.Text.ToString();
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"$('#myModal').modal('show');");
            sb.Append(@"</script>");
            //popup
            ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());

        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                RepeaterItem item2 = (sender as Button).NamingContainer as RepeaterItem;
                Label email = (Label)item2.FindControl("lblemail");

                SqlCommand cmd = new SqlCommand("update tblApplicationDetails set ApplicationStatus = @ApplicationStatus where email = @email", con);
                cmd.Parameters.AddWithValue("@ApplicationStatus", "Successful");
                cmd.Parameters.AddWithValue("@email", email.Text);
                con.Close();
                con.Open();
                int x = cmd.ExecuteNonQuery();
                Repeater1.DataBind();
                bindRepeater();
                if (x > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Application Approved');", true);
                    
                }
                //else
                //{
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Not Approved');", true);

                //}
            }
        }
    }
}