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
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void CommandBtn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string CommandName = btn.CommandName;
            string CommandArgument = btn.CommandArgument;
            string id=(sender as Button).CommandArgument;
           //string fullname1 = Request[CommandArgument];
            int totalAmt;
            int.TryParse(Request.QueryString["totalAmt"], out totalAmt);
          
            Response.Redirect("Viewmore.aspx?dishid="+id+"&totalAmt="+totalAmt);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            int totalAmt;
            int.TryParse(Request.QueryString["totalAmt"], out totalAmt);
          
            Response.Write(totalAmt);
            if (!IsPostBack)
            {
                string sFilePath = Server.MapPath("labb.mdb");
                DataTable dt;
                OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + sFilePath + ";Persist Security Info=False;");

                using (Conn)
                {
                    Conn.Open();
                    OleDbCommand cmd = new OleDbCommand("SELECT * FROM menu", Conn);
                    OleDbDataAdapter oDA = new OleDbDataAdapter(cmd);
                    dt = new DataTable();
                    oDA.Fill(dt);

                }

                DataList1.DataSource = dt;
                DataList1.DataBind();

            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           // Response.Redirect("Viewmore.aspx");
        }


        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}