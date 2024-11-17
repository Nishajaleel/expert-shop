using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegistration : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownList1.Items.Add(i.ToString());
        }
        DropDownList1.Items.Insert(0, new ListItem("--DD--", "0"));
        for (int i = 01; i <= 12; i++)
        {
            DropDownList2.Items.Add(i.ToString());
        }
        DropDownList2.Items.Insert(0, new ListItem("--MM--", "0"));
        for (int i = 1950; i <= 2017; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }
        DropDownList3.Items.Insert(0, new ListItem("--YYYY--", "0"));
        DropDownList5.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList5.Items.Insert(1, new ListItem("MALE", "1"));
        DropDownList5.Items.Insert(2, new ListItem("FEMALE", "2"));
        DropDownList4.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList4.Items.Insert(1, new ListItem("What is your first name?", "1"));
        DropDownList4.Items.Insert(2, new ListItem("What is your first pet's name", "2"));
        DropDownList4.Items.Insert(3, new ListItem("your nickname", "3"));
        DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList6.Items.Insert(1, new ListItem("INDIA", "1"));
        DropDownList6.Items.Insert(2, new ListItem("USA", "2"));
        DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList7.Items.Insert(1, new ListItem("KERALA", "1"));
        DropDownList7.Items.Insert(2, new ListItem("TAMILNADU", "2"));
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(userid),400)+1 from uregister");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || DropDownList1.SelectedItem.ToString() == "Select" || DropDownList2.SelectedItem.ToString() == "Select" || DropDownList3.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            int uid = getid();
            string dob = DropDownList1.SelectedItem.ToString() + "/" + DropDownList2.SelectedItem.ToString() + "/" + DropDownList3.SelectedItem.ToString();
            string address = TextBox7.Text + TextBox10.Text + TextBox11.Text;
            ob.dr = ob.ret_dr("select uname from Login where uname='" + TextBox1.Text + "'");
            if (!ob.dr.Read())
            {
                ob.exec("insert into uregister values(" + uid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + address + "','" + DropDownList5.SelectedItem.ToString() + "','" + TextBox4.Text + "','" + dob + "','" + DropDownList4.SelectedItem.ToString() + "','" + TextBox9.Text + "',0,'" + DropDownList7.SelectedItem.ToString() + "','" + TextBox12.Text + "','" + TextBox8.Text + "','" + DropDownList6.SelectedItem.ToString() + "','"+TextBox13.Text+"')");
                ob1.exec("insert into Login values(" + uid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "',0)");
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox13.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox10.Text = "";
                TextBox12.Text = "";
                TextBox11.Text = "";
                TextBox8.Text = "";
                
                  Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Username Not Available!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}