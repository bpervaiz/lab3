using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using  System.Data;
using  System.Data.SqlClient;
using  System.Configuration;

using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
namespace lab3sc
{
    public partial class homepage : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        Bind_DataList();
        //    }
        //}
        //public void Bind_DataList()
        //{
        //    if (con.State == ConnectionState.Closed)
        //    {
        //        con.Open();
        //    }
        //    SqlCommand cmd = new SqlCommand("select * from user", con);
        //    SqlDataAdapter adpData = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adpData.Fill(dt);
        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();
        //    con.Close();
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string MyConString = "SERVER=localhost;DATABASE=cafe_management;UID=root;PASSWORD=;";
            MySqlConnection connection = new MySqlConnection(MyConString);
            MySqlCommand command = connection.CreateCommand();
            MySqlDataReader reader;
            command.CommandText = "select * from menu";
            connection.Open();
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                string[] row = { reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetString(3) };
                ListBox1.Items.Add(row[1]+ "Rs.   " + row[2] );
                Button dynamicButton = new Button();
                //dynamicButton.BackColor = Color.Red;
                //dynamicButton.ForeColor = Color.Blue;
                dynamicButton.Text = "Order Now";
                dynamicButton.ID = row[0];

                dynamicButton.Click += new EventHandler(dynamicButton_Click);
                homepage1.Controls.Add(dynamicButton);

            }

            connection.Close();
        }

        void dynamicButton_Click(object sender, EventArgs e)
        {
            int nolim = 3;
            string curart = "";
            string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=cafe_management;";
            string query = "select * from menu where dish_id ='" + (sender as Button).ID + "'";

            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
            commandDatabase.CommandTimeout = 60;
            MySqlDataReader reader;

            try
            {
                databaseConnection.Open();
                reader = commandDatabase.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        if (reader.GetInt32(3) >0)
                        {
                            databaseConnection.Close();
                            String nolimquery = "UPDATE menu  SET quantity = quantity -1  WHERE dish_id = '" + (sender as Button).ID + "';";
                            databaseConnection.Open();
                            using (MySqlCommand nolimcom = new MySqlCommand(nolimquery, databaseConnection))
                            {

                                nolimcom.CommandTimeout = 60;
                                int result1 = nolimcom.ExecuteNonQuery();

                                // Check Error
                                if (result1 < 0)
                                    Console.WriteLine("Error updating data!");
                                else
                                {
                                    Console.WriteLine("updated data!");
                                    //MessageBox.Show("done!");
                                }
                                databaseConnection.Close();
                            }
                      
                        }
                        
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }

                databaseConnection.Close();
            }
            catch (Exception ex)
            {
            }
        }
    }
}
