using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        string cont_id = checkavail();
        
        if(cont_id == null)
        {
            Response.Write("Sorry, The servers are running at full capacity. Please come later");
            goto Last;
        }


        try
        {
            cn.Open();

            string ins = "insert into login (name,username,password,country,email,container_id) values ('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + cont_id + "');";
            cmd = new SqlCommand(ins, cn);
            cmd.ExecuteNonQuery();
            Response.Write("You have been successfully registered!");
            allocatecontainer(cont_id);
        }
        catch(Exception e1)
        {
            Response.Write(e1);
            Response.Write("Username Might already Exists");

        }
        finally
        {
            cn.Close();
        }
        Last:
        System.Threading.Thread.Sleep(100);
    }
   
    protected string checkavail()
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(constr);

        string ins = "select id from container where allocated <> 1;";

        SqlCommand com = new SqlCommand(ins, cn);
        
        try
        {
            cn.Open();
            string empty = null;
            using (SqlDataReader read = com.ExecuteReader())
            {
                while (read.Read())
                {
                    empty = (read["id"].ToString());
                    break;
                }
            }
            cn.Close();
            return empty;
        }
        finally
        {
            cn.Close();
        }
        
    }
    
    protected void allocatecontainer(string cont_id)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(constr);
        try
        {
            cn.Open();          
            string ins = "UPDATE container SET allocated = 1 where id='" + cont_id + "';";
            SqlCommand cmd = new SqlCommand(ins, cn);
            int a = cmd.ExecuteNonQuery();
            
        }
        catch (Exception e1)
        {
            Response.Write(e1);
        }
        finally
        {
            cn.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}