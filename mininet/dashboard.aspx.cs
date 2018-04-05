using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Net.Http.Formatting;
using System.Configuration;
using System.Data.SqlClient;



public partial class admin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"].ToString() == null)
            Response.Redirect("default.aspx");
           
    }
    public class authentic
    {
        public string jwt { get; set; }
    }

    public class Users
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        GetData();
    }
    private void GetData()
    {
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri("http://10.208.15.81:9000/");
        client.DefaultRequestHeaders.Clear();
        // Add an Accept header for JSON format.
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        var user = new Users();
        user.Username = Session["username"].ToString();
        user.Password = Session["password"].ToString();

        var response = client.PostAsJsonAsync("api/auth", user).Result;
        // @Prash+
        if (response.IsSuccessStatusCode)
        {
            var res = response.Content.ReadAsStringAsync().Result;
            authentic obj = JsonConvert.DeserializeObject<authentic>(res);
          //  Response.Write("Step 2 Complete"); @Prash+
            //Response.Write(obj.jwt);
            Session["jwt"]= obj.jwt;
        }
        else
        {
            Response.Write("Error Code" + response.StatusCode + " : Message - " + response.ReasonPhrase);
        }
    }

    public class Bearer
    {
        public string Authorization { get; set; }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        startcontainer();
    }



    private void startcontainer()
    {
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri("http://10.208.15.81:9000/");
        client.DefaultRequestHeaders.Clear();
        
        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Session["jwt"].ToString());
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        string container_id = getId();
        Response.Write("Starting :" + container_id);
        var response = client.PostAsync("api/endpoints/1/docker/containers/"+container_id+ "/start",null).Result;
        //Response.Write("Step 1 complete"); //@Prash+
        if (response.IsSuccessStatusCode)
        {
            var res = response.Content.ReadAsStringAsync().Result;
            //@Prash+
        }
        else
        {
            Response.Write("Error Code" + response.StatusCode + " : Message - " + response.ReasonPhrase);
        }
       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        stopcontainer();
    }

    private void stopcontainer()
    {
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri("http://10.208.15.81:9000/");
        client.DefaultRequestHeaders.Clear();
        
        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Session["jwt"].ToString());
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        string container_id = getId();
        Response.Write("Stoping :" + container_id);
        var response = client.PostAsync("api/endpoints/1/docker/containers/" + container_id + "/stop", null).Result;
        //Response.Write("Step 1 complete"); //@Prash+
        if (response.IsSuccessStatusCode)
        {
            var res = response.Content.ReadAsStringAsync().Result;
            //@Prash+
        }
        else
        {
            Response.Write("Error Code" + response.StatusCode + " : Message - " + response.ReasonPhrase);
        }
    }

    protected string getId()
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(constr);

        string ins = "select container_id from login where username='" + Session["uname"].ToString() + "';";
        SqlCommand com = new SqlCommand(ins, cn);
        string container_id = "123";
        try
        {
            cn.Open();

            using (SqlDataReader read = com.ExecuteReader())
            {
                while (read.Read())
                {
                    container_id = (read["container_id"].ToString());
                    //@Prash+
                    break;
                }
            }
            return container_id;
        }
        catch (Exception e1)
        {
            Response.Write(e1);
            return null;
        }
        finally
        {
            cn.Close();
        }
    }

    public class createContainer
    {
        public string name { get; set; }
        public string Image { get; set; }
        public string ExposedPorts { get; set; }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}

