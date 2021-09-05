using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem.admin
{
    public partial class sessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divAddsession.Visible = false;
            divSetSession.Visible = false;
        }

        protected void btnAddSession_Click(object sender, EventArgs e)
        {
            divAddsession.Visible = true;
            divSetSession.Visible = false;
            lblmsg.Visible = false;
        }

        protected void btnSet_Click(object sender, EventArgs e)
        {
            divSetSession.Visible = true;
            divAddsession.Visible = false;
            lblmsg.Visible = false;
        }

        protected void btnSession_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
                {
                    if (txtSession.Value == "" /*|| txtStartDate.Value == "" || txtEndDate.Value == ""*/)
                    {
                        Response.Write("<script LANGUAGE=JavaScript>alert('Fill All Spaces')</script>");
                        divAddsession.Visible = true;
                    }
                    else
                    {
                        con.Open();
                        string select = "select * from tblSession where SessionName = '" + txtSession.Value + "'";
                        SqlCommand cmd = new SqlCommand(select, con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        dr.Read();
                        if (dr.HasRows)
                        {
                            lblmsg.Text = "Session Already Created";
                            lblmsg.CssClass = "alert alert-danger";
                            lblmsg.Visible = true;
                            divAddsession.Visible = true;
                        }
                        else
                        {
                            con.Close();
                            con.Open();
                            string insert = "INSERT INTO [dbo].[tblSession]([SessionName],[startDate],[endDate],[status], [addedBy], [dateAdded], [Status_SetBy])VALUES(@SessionName,@startDate,@endDate,@status, @addedBy, @dateAdded, @Status_SetBy )";
                            SqlCommand cmd1 = new SqlCommand(insert, con);
                            cmd1.Parameters.AddWithValue("@SessionName", txtSession.Value.ToString().Trim());
                            cmd1.Parameters.AddWithValue("@startDate", Convert.ToDateTime(txtStartDate.Value.ToString()).Date);
                            cmd1.Parameters.AddWithValue("@endDate", Convert.ToDateTime(txtEndDate.Value.ToString()).Date);
                            cmd1.Parameters.AddWithValue("@status", false);
                            cmd1.Parameters.AddWithValue("@dateAdded", Convert.ToDateTime(DateTime.Now));
                            cmd1.Parameters.AddWithValue("@addedBy", "User");
                            cmd1.Parameters.AddWithValue("@Status_SetBy", "User");

                            cmd1.ExecuteNonQuery();
                            lblmsg.Text = "Session Created Successfully";
                            lblmsg.CssClass = "alert alert-success";
                            lblmsg.Visible = true;
                            ddSession.DataBind();
                            //lblmessage.ForeColor = System.Drawing.Color.Green;
                            GridView1.DataBind();
                        }
                        txtSession.Value = "";

                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSestSession_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString))
            {
                try
                {
                    con.Close();
                    con.Open();
                    SqlCommand cmd3 = new SqlCommand();
                    cmd3.Connection = con;
                    cmd3.CommandText = "UPDATE [dbo].[tblSession] SET [status] ='0' ";
                    cmd3.ExecuteNonQuery();
                    con.Close();


                    //}
                    //else {
                    con.Close();
                    con.Open();
                    SqlCommand cmd4 = new SqlCommand();
                    cmd4.Connection = con;
                    cmd4.CommandText = "UPDATE [dbo].[tblSession] SET [status] = @status  where [SessionName] = '" + ddSession.Text + "'";
                    if (ddstatus.SelectedValue == "1")
                    {
                        cmd4.Parameters.AddWithValue("@status", '1');
                    }
                    else
                    {
                        cmd4.Parameters.AddWithValue("@status", '0');
                    }
                    cmd4.ExecuteNonQuery();
                    lblmsg.Text = "Status Updated  Successfully";
                    lblmsg.CssClass = "alert alert-success";
                    divSetSession.Visible = false;
                    lblmsg.Visible = true;
                    con.Close();
                    GridView1.DataBind();
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }
    }
}