using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\prash\\Documents\\Visual Studio 2017\\WebSites\\mininet\\App_Data\\Database.mdf\";Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        try
        {
            cn.Open();
            string ins = "select * from login where username=('" + TextBox1.Text + "') and password=('" + TextBox2.Text + "')";
            cmd = new SqlCommand(ins, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Session["username"] = "admin";
                Session["password"] = "prashant";
                Session["uname"] = TextBox1.Text;
                Session["passwd"] = TextBox2.Text;
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                cn.Close();
                Response.Write("Error! Please Try Again...");
            }
        }
        catch (Exception e1)
        {
            cn.Close();
            Response.Write(e1);
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        try
        {
            cn.Open();
            string ins = "select * from admin where username=('" + TextBox1.Text + "') and password=('" + TextBox2.Text + "')";
            cmd = new SqlCommand(ins, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Session["username"] = "admin";
                Session["password"] = "prashant";
                Session["uname"] = TextBox1.Text;
                Session["passwd"] = TextBox2.Text;
                Response.Redirect("admin.aspx");
            }
            else
            {
                cn.Close();
                Response.Write("Error! Please Try Again...");
            }
        }
        catch (Exception e1)
        {
            cn.Close();
            Response.Write(e1);
        }
    }
}