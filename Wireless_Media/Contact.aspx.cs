using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wireless_Media
{
    public partial class Contact : Page
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

        protected void Grid_EditCommand(object source, DataGridCommandEventArgs e)
        {
            Grid.EditItemIndex = e.Item.ItemIndex;
            BindData();
        }

        protected void Grid_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            Grid.EditItemIndex = -1;
            BindData();
        }

        protected void Grid_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            con = new MySqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString);
            cmd.Parameters.Add("@id", MySqlDbType.Int16).Value = ((TextBox)e.Item.Cells[0].Controls[0]).Text;
            cmd.Parameters.Add("@naziv", MySqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
            cmd.Parameters.Add("@opis", MySqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
            cmd.Parameters.Add("@kategorija", MySqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[3].Controls[0]).Text;
            cmd.Parameters.Add("@proizvodjac", MySqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
            cmd.Parameters.Add("@dobavljac", MySqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[5].Controls[0]).Text;
            cmd.Parameters.Add("@cena", MySqlDbType.Int16).Value = ((TextBox)e.Item.Cells[6].Controls[0]).Text;
            cmd.CommandText = "Update proizvod set id=@id,naziv=@naziv,opis=@opis,kategorija=@kategorija,proizvodjac=@proizvodjac,dobavljac=@dobavljac,cena=@cena where id=@id";
            cmd.Connection = con;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Grid.EditItemIndex = -1;
            BindData();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
                MySqlConnection con;
                con = new MySqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString);
                con.Open();
                MySqlCommand cmd;
                cmd = new MySqlCommand("Insert into proizvod (id,naziv,opis,kategorija,proizvodjac,dobavljac, cena) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close(); 
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
                BindData();     
        }

        protected void btnBaza_Click(object sender, EventArgs e)
        {
             BindData();
        }
    }
}