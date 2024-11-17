using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminUpdateManager : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select username from mregister where status=0");
            while (ob.dr.Read())
            {
                DropDownList8.Items.Add(ob.dr[0].ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ob.exec("update mregister set email='" + TextBox14.Text + "', contact='" + TextBox17.Text + "',country='" + TextBox26.Text + "',address1='" + TextBox18.Text + "', address2='" + TextBox19.Text + "', city='" + TextBox21.Text + "', location='" + TextBox23.Text + "' where username='" + DropDownList8.SelectedItem.ToString() + "'");
        Label11.Visible = true;
        Label11.Text = "Update Successfully!";
        TextBox14.Text = "";
        TextBox17.Text = "";
        TextBox26.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox21.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        DropDownList8.SelectedIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ob.exec("delete from mregister where username='" + DropDownList8.SelectedItem.ToString() + "'");
        Label11.Visible = true;
        Label11.Text = "Delete Successfully!";
        TextBox14.Text = "";
        TextBox17.Text = "";
        TextBox26.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox21.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        DropDownList8.SelectedIndex = 0;
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from mregister where username='" + DropDownList8.SelectedItem.ToString() + "'");
        while (ob.dr.Read())
        {
            TextBox14.Text = ob.dr[3].ToString();
            TextBox17.Text = ob.dr[4].ToString();
            TextBox26.Text = ob.dr[5].ToString();
            TextBox18.Text = ob.dr[6].ToString();
            TextBox19.Text = ob.dr[7].ToString();
            TextBox21.Text = ob.dr[8].ToString();
            TextBox23.Text = ob.dr[9].ToString();
            TextBox24.Text = ob.dr[10].ToString();
            TextBox25.Text = ob.dr[11].ToString();

        }
    }
}