using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddProductCategory : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            //DropDownList6.Items.Insert(1, new ListItem("GAMING", "1"));
            //DropDownList6.Items.Insert(2, new ListItem("DEVELOPER", "2"));
            //DropDownList6.Items.Insert(3, new ListItem("OTHERS", "3"));
            //DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            //DropDownList7.Items.Insert(1, new ListItem("DESKTOP", "1"));
            //DropDownList7.Items.Insert(2, new ListItem("MONITOR", "2"));
            //DropDownList7.Items.Insert(2, new ListItem("KEYBOARD", "2"));
            //DropDownList7.Items.Insert(2, new ListItem("LAPTOP", "2"));

        }

        TextBox1.Text = getid();
    }
    public string getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(catcode),500)+1 from Category");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c.ToString();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox5.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string aa = "NA";
            ob.exec("insert into Category values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "',0)");
            Label11.Visible = true;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Category Added Successfully');", true);
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Your request has been approved!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox1.Text = getid();
         
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox4.Text = "";
    }
}