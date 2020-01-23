using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Text.RegularExpressions;
using System.Collections.Generic;

public partial class usercomments : System.Web.UI.Page
{
    byte[] raw;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconnectionstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["loggedin"] == null)
            {
                ImageButton1.Enabled = false;
                TextBox6.Enabled = false;

            }
            if (!IsPostBack)
            {
                //displayimage();
                loadcomments();
            }
            string post = string.Empty;
            DataSet ds = new DataSet();
            //string postid = Request.QueryString["postid"];
            //string name = Request.QueryString["name"];
            //string date = Request.QueryString["date"];
            string postid = Convert.ToString(Session["postid"]);
            string name = Convert.ToString(Session["name"]);
            string date = Convert.ToString(Session["date"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_getpostmessage", con);
            cmd.CommandText = "sp_getpostmessage";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@postid", postid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                post = ds.Tables[0].Rows[0][0].ToString();
            }

            TextBox1.Text = post;
            Label1.Text = name;
            Label2.Text = date;
        }
        catch (Exception e1)
        {
        }

    }

    //protected void change_click(object sender, EventArgs e)
    //{

    //    //Response.Redirect("wait.aspx");
    //    FileUpload1.Visible = true;
    //    Button3.Visible = true;
    //}

    public void loadcomments()
    {
        try
        {
            DataSet ds11 = new DataSet();
            string postid = Convert.ToString(Session["postid"]);
            con.Open();
            SqlCommand cmd1111 = new SqlCommand("sp_getcomments", con);
            cmd1111.CommandText = "sp_getcomments";
            cmd1111.CommandType = CommandType.StoredProcedure;
            cmd1111.Parameters.AddWithValue("@postid", postid);
            SqlDataAdapter da = new SqlDataAdapter(cmd1111);
            da.Fill(ds11);
            con.Close();
            GridView1.DataSource = ds11;
            GridView1.DataBind();
        }
        catch (Exception e1)
        {
        }
    }

    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string username = Convert.ToString(Session["username"]);
            string postid = Convert.ToString(Session["postid"]);
            DateTime cdate = DateTime.Now;
            string comment = TextBox6.Text;

            if (comment.Length == 0)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Please Enter Answer')</script>", false);
            }
            else
            {
                SqlCommand cmd111 = new SqlCommand("sp_comments", con);
                cmd111.CommandText = "sp_comments";
                cmd111.CommandType = CommandType.StoredProcedure;
                cmd111.Parameters.Add("@commentid", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd111.Parameters.AddWithValue("@postid", postid);
                cmd111.Parameters.AddWithValue("@username", username);
                cmd111.Parameters.AddWithValue("@comment", comment);
                cmd111.Parameters.AddWithValue("@date", cdate);
                con.Open();
                cmd111.ExecuteNonQuery();
                string result = cmd111.Parameters["@commentid"].Value.ToString();
                int commentid = Convert.ToInt32(result);
                con.Close();
                if (commentid > 0)
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Your Answers has been recorded');window.location='usercomments.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Your Answers hasn't been recorded')</script>", false);
                }

            }
        }
        catch (Exception e1)
        {
        }
    }
    
}
   
    
