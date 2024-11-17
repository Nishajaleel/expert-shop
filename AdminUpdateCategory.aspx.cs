using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminUpdateCategory : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList6.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select catcode from category where status=0");
            while (ob.dr.Read())
            {
                DropDownList6.Items.Add(ob.dr[0].ToString());
            }
        }
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from category where catcode=" + DropDownList6.SelectedItem.ToString() + "");
        while (ob.dr.Read())
        {
            TextBox2.Text = ob.dr[1].ToString();
            TextBox1.Text = ob.dr[2].ToString();
            TextBox5.Text = ob.dr[3].ToString();
            TextBox4.Text = ob.dr[4].ToString();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ob.exec("update category set catname='" + TextBox2.Text + "', topcat='" + TextBox1.Text + "',subcat='" + TextBox5.Text + "',description='" + TextBox4.Text + "' where catcode=" + DropDownList6.SelectedItem.ToString() + "");
        Label11.Visible = true;
        Label11.Text = "Update Successfully!";
        TextBox2.Text = "";
        TextBox1.Text = "";
        TextBox5.Text = "";
        TextBox4.Text = "";
        DropDownList6.SelectedIndex = 0;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ob.exec("delete from category where catcode=" + DropDownList6.SelectedItem.ToString() + "");
        Label11.Visible = true;
        Label11.Text = "Delete Successfully!";
        TextBox2.Text = "";
        TextBox1.Text = "";
        TextBox5.Text = "";
        TextBox4.Text = "";
        DropDownList6.SelectedIndex = 0;
    }
}