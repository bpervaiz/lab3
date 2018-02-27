using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Viewmore : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //int totalAmt = 0;
            string dishid = Request.QueryString["dishid"];
            int totalAmt;
            int.TryParse(Request.QueryString["totalAmt"], out totalAmt); 

            //Response.Write(lblname.Text);
            string sFilePath = Server.MapPath("labb.mdb");
            DataTable dt;
            OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + sFilePath + ";Persist Security Info=False;");

            using (Conn)
            {
                Conn.Open();
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM menu where ID = "+dishid, Conn);
                OleDbDataAdapter oDA = new OleDbDataAdapter(cmd);
                OleDbDataReader rowItems;
                rowItems = cmd.ExecuteReader(CommandBehavior.Default);
                string test;
                while (rowItems.Read())
                {
                    lblname.Text = rowItems[1].ToString();
                    lblprice.Text = rowItems[3].ToString();
                    lblcat.Text = rowItems[2].ToString();

                    //Response.Write(test);
                }
            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dishid = Request.QueryString["dishid"];
            //Response.Write(lblname.Text);
            int totalAmt;
            int.TryParse(Request.QueryString["totalAmt"], out totalAmt); 

            string sFilePath = Server.MapPath("labb.mdb");
            //DataTable dt;
            int dish = 0;
            OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + sFilePath + ";Persist Security Info=False;");

            using (Conn)
            {
                Conn.Open();
                OleDbCommand cmd = new OleDbCommand("UPDATE menu SET quantity = quantity - 1 WHERE quantity > 1 AND ID = "+ dishid , Conn);
                cmd.ExecuteNonQuery();
                Int32.TryParse(dishid, out dish);
                switch (dish){
                    case 1:
                        totalAmt += 800;
                        break;
                    case 2:
                        totalAmt += 600;
                        break;
                    case 3:
                        totalAmt += 50;
                        break;
                    case 4:
                        totalAmt += 200;
                        break;
                    case 5:
                        totalAmt += 500;
                        break;
                    case 6:
                        totalAmt += 30;
                        break;
                    case 7:
                        totalAmt += 70;
                        break;
                    case 8:
                        totalAmt += 20;
                        break;
                    case 9:
                        totalAmt += 400;
                        break;
                    case 10:
                        totalAmt += 100;
                        break;
                    case 11:
                        totalAmt += 1000;
                        break;
                }
                //OleDbCommand cmd = new OleDbCommand("INSERT INTO order ([ID], type, completion_status, customer_id, dish_id) VALUES (@idd, @type, @cs, @cid, @did)", Conn);
                //cmd.Parameters.AddWithValue("@idd", 1);
                //cmd.Parameters.AddWithValue("@type", "pickup");
                //cmd.Parameters.AddWithValue("@cs", "incomplete");
                //cmd.Parameters.AddWithValue("@cid", 2);
                //cmd.Parameters.AddWithValue("@did", 3);
                //bool result;
                //if (cmd.ExecuteNonQuery() == 1)
                //    result = true;
                //else
                //    result = false;
                //Response.Write(result);
               // OleDbCommand cmd1 = new OleDbCommand("INSERT INTO order ([ID],type,completion_status,customer_id,dish_id) " + "VALUES (1,'pickup','incomplete',1,2)",Conn);
                //cmd1.ExecuteNonQuery();
          
            }
            

            Response.Redirect("menu.aspx?totalAmt="+totalAmt);
            //PostBackUrl="~/Login.aspx"
        }
    }
}