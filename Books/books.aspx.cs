using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Books
{
    public partial class books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            disp();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into books values('"+TextBox1.Text+"','"+Convert.ToInt32( TextBox2.Text)+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')",con);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            disp();
            Label3.Text = "Data inserted successfully! Scroll down";
            Label3.ForeColor = Color.FromName("green");
            Label3.Font.Bold = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from books where Book_Issue_No='"+TextBox1.Text+"'",con);
            cmd.ExecuteNonQuery();
            disp();
            Label3.Text = "Data deleted successfully! Scroll down";
            Label3.ForeColor = Color.FromName("red");
            Label3.Font.Bold = true;
        }

        public void disp() {
            SqlCommand read = new SqlCommand("select * from books", con);
            GridView1.DataSource = read.ExecuteReader();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex==0)
            {
                SqlCommand cmd = new SqlCommand("update books set Book_issue_no='"+TextBox7.Text+"' where Book_issue_no='"+TextBox6.Text+"' ",con);
                cmd.ExecuteNonQuery();
            }
            else if(DropDownList1.SelectedIndex==1)
            {
                SqlCommand cmd = new SqlCommand("update books set Roll_no='" +Convert.ToInt32( TextBox7.Text) + "' where Roll_no='" +Convert.ToInt32( TextBox6.Text )+ "' ", con);
                cmd.ExecuteNonQuery();
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                SqlCommand cmd = new SqlCommand("update books set Book_no='" + TextBox7.Text + "' where Book_no='" + TextBox6.Text + "' ", con);
                cmd.ExecuteNonQuery();
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                SqlCommand cmd = new SqlCommand("update books set Issue_date='" + TextBox7.Text + "' where Issue_date='" + TextBox6.Text + "' ", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update books set Return_date='" + TextBox7.Text + "' where Return_date='" + TextBox6.Text + "' ", con);
                cmd.ExecuteNonQuery();
            }
            disp();
            Label3.Text = "Data updated successfully! Scroll down";
            Label3.ForeColor = Color.FromName("blue");
            Label3.Font.Bold = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand read = new SqlCommand("select Roll_no from books where Return_date='"+DateTime.Now+"'", con);
            SqlDataAdapter sd2 = new SqlDataAdapter(read);
            DataTable dt2 = new DataTable();
            sd2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();
            Label3.Text = "Student list displayed! Scroll down";
            Label3.ForeColor = Color.FromName("blue");
            Label3.Font.Bold = true;
        }
    }
}