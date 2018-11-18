using System;
using System.Data;
using System.Web.UI;
using System.Configuration;
using MySql.Data.MySqlClient;
using Newtonsoft.Json;
using System.IO;

namespace Wireless_Media
{
    public partial class _Default : Page
    {
        MySqlDataAdapter da;
        DataSet ds = new DataSet();
        MySqlCommand cmd = new MySqlCommand();
        MySqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {    
        }

        public void BindData()
        {
            con = new MySqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString);
            cmd.CommandText = "Select * from proizvod";
            cmd.Connection = con;
            da = new MySqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            Grid.DataSource = ds;
            Grid.DataBind();
            con.Close();
        }

        public void BindJson()
        {
            string str = File.ReadAllText("c:\\codebeautify.json");
            DataTable myObjectDT = JsonConvert.DeserializeObject<DataTable>(str);
            Grid.DataSource = myObjectDT;
            Grid.DataBind();
        }

        protected void btnPrikazi_Click(object sender, EventArgs e)
        {         
            if (Request.Form["DataType"] != null)
            {
                string selectedDataType = Request.Form["DataType"].ToString();
                if (selectedDataType == "BAZA")
                {
                    BindData();
                }
                else
                    BindJson();
            }
        }
    }
}