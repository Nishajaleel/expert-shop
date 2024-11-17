using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddManager : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
            {
                DropDownList11.Items.Add(i.ToString());
            }
            DropDownList11.Items.Insert(0, new ListItem("--DD--", "0"));
            for (int i = 01; i <= 12; i++)
            {
                DropDownList12.Items.Add(i.ToString());
            }
            DropDownList12.Items.Insert(0, new ListItem("--MM--", "0"));

            for (int i = 1950; i <= 2017; i++)
            {
                DropDownList13.Items.Add(i.ToString());
            }
            DropDownList13.Items.Insert(0, new ListItem("--YYYY--", "0"));
            DropDownList10.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList10.Items.Insert(1, new ListItem("MALE", "1"));
            DropDownList10.Items.Insert(2, new ListItem("FEMALE", "2"));

            DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList8.Items.Insert(1, new ListItem("INDIA", "1"));
            DropDownList8.Items.Insert(2, new ListItem("USA", "2"));
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(mid),300)+1 from mregister");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // uid = getid().ToString();
        if (TextBox13.Text == "" || TextBox14.Text == "" || TextBox17.Text == "" || TextBox18.Text == "" || TextBox19.Text == "" || TextBox21.Text == "" || TextBox23.Text == "" || DropDownList8.SelectedItem.ToString() == "Select" || DropDownList10.SelectedItem.ToString() == "Select" )
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            int uid = getid();
            string dob = DropDownList11.SelectedItem.ToString() + "/" + DropDownList12.SelectedItem.ToString() + "/" + DropDownList13.SelectedItem.ToString();
           // string address = TextBox7.Text + TextBox10.Text + TextBox11.Text;
            ob.dr = ob.ret_dr("select uname from Login where uname='" + TextBox13.Text + "'");
            if (!ob.dr.Read())
            {
                ob.exec("insert into mregister values(" + uid + ",'" + TextBox13.Text + "','" + TextBox15.Text + "','" + TextBox14.Text + "','" + TextBox17.Text + "','" + DropDownList8.SelectedItem.ToString() + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox21.Text + "','" + TextBox23.Text + "','" + DropDownList10.SelectedItem.ToString() + "','" + dob + "',1,'" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "')");
                ob1.exec("insert into Login values(" + uid + ",'" + TextBox13.Text + "','" + TextBox15.Text + "',1)");
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
                TextBox17.Text = "";
                TextBox18.Text = "";
                TextBox19.Text = "";
                TextBox21.Text = "";
                TextBox23.Text = "";
                DropDownList11.SelectedIndex = 0;
                DropDownList10.SelectedIndex = 0;
                DropDownList8.SelectedIndex = 0;
                DropDownList13.SelectedIndex = 0;
                DropDownList12.SelectedIndex = 0;

                //  Response.Redirect("Login.aspx");
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
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox21.Text = "";
        TextBox23.Text = "";
    }
}