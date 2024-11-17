using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
     DatabaseConnection ob = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "" || TextBox1.Text == "")
        {
            Label3.Visible = true;
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Please Enter all fields correctly!";
        }
        else
        {
            ob.dr = ob.ret_dr("select status from Login where uname='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            if (ob.dr.Read())
            {
                if (ob.dr[0].ToString() == '1'.ToString())
                {
                    // Session["uid"] = TextBox1.Text;
                    Session["muname"] = TextBox1.Text;
                    Response.Redirect("ManagerAddProduct.aspx", true);


                }
                else if (ob.dr[0].ToString() == '2'.ToString())
                {
                    Session["uname"] = TextBox1.Text;
                    Response.Redirect("UserAddProduct.aspx", true);
                }
                else if (ob.dr[0].ToString() == '3'.ToString())
                {
                    Session["iuname"] = TextBox1.Text;
                    Response.Redirect("InstitutionQuatationOrder.aspx", true);

                }
                else if (ob.dr[0].ToString() == '4'.ToString())
                {
                    //Session["puname"] = TextBox1.Text;
                    Response.Redirect("AdminAddManager.aspx", true);
                }

            }
            else
            {
                Response.Write("<script type = 'text/javascript'>alert('Invalid User');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}