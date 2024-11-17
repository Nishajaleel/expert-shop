using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

public partial class ManagerAddProduct : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();

    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "", img2 = "";
    DatabaseConnection ob1 = new DatabaseConnection();
    public static int sid;
    public static string muname;
    public static string shopname1;
    public static string shopname = "";

    protected void Page_Load(object sender, EventArgs e)
    {
       
        getid();
        stockgetid();
        getsname();
      //  Session["muname"] = "mahesh";
        muname = Session["muname"].ToString();
       // TextBox15.Text = DateTime.Now.ToShortDateString();
        if (!IsPostBack)
        {
          
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct topcat from Category");
            while (ob.dr.Read())
            {
                DropDownList2.Items.Add(ob.dr[0].ToString());
            }
           
        }
    }
    void getid()
    {
        ob.dr = ob.ret_dr("select isnull(max(pcode),10000)+1 from product");
        if (ob.dr.Read())
        {
            TextBox8.Text = ob.dr[0].ToString();
        }
    }
    void getsname()
    {
        ob.dr = ob.ret_dr("select sname from mregister where username='"+muname+"'");
        if (ob.dr.Read())
        {
            shopname = ob.dr[0].ToString();
        }
    }
    void stockgetid()
    {
        ob.dr = ob.ret_dr("select isnull(max(stockid),900)+1 from stock");
        if (ob.dr.Read())
        {
            sid = Convert.ToInt32(ob.dr[0].ToString());
            // TextBox2.Text = sid.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox10.Text == "" || TextBox11.Text == "" || TextBox9.Text == "" || TextBox12.Text == "" || TextBox13.Text == "" || TextBox14.Text == "" || TextBox15.Text == "" || TextBox6.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {


            document4 = "mdesign/" + document3;
            document41 = "sdesign1/" + document31;
            document42 = "sdesign2/" + document32;
            document43 = "sdesign3/" + document33;
            if (!ob.dr.Read())
            {
                string str1 = "insert into product values(" + TextBox8.Text + ",'" + DropDownList2.SelectedItem.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox1.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',('" + TextBox7.Text + "'),('" + TextBox9.Text + "'),('" + TextBox10.Text + "'),('" + TextBox16.Text + "'),'" + document4 + "','" + document41 + "','" + document42 + "','" + document43 + "',0,('" + TextBox2.Text + "'),'"+shopname+"')";
                ob.exec(str1);
                ob1.exec("insert into stock values(" + sid + "," + TextBox8.Text + ",'" + muname + "','" + TextBox3.Text + "','" + TextBox14.Text + "','" + DateTime.Now.ToShortDateString() + "',0,0,0)");

                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Data stored successfully !";
                TextBox6.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox1.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox7.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox16.Text = "";
                DropDownList2.SelectedIndex = 0;
                DropDownList1.SelectedIndex = 0;
              
                //TextBox6.Text = "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Product Added Successfully');", true);
              //  Response.Redirect("ShopAdminAddStock.aspx");
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Failure Transcation!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document2 = Server.MapPath("~/mdesign/" + "/");
       
            if (!Directory.Exists(document2))
                Directory.CreateDirectory(document2);
            if (FileUpload1.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);


                    FileUpload1.SaveAs(document2 + TextBox8.Text + extension);
                    document3 = TextBox8.Text + extension;
                   
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void FileUpload2_Load(object sender, EventArgs e)
    {
        try
        {
            document21 = Server.MapPath("~/sdesign1/" + "/");
            if (!Directory.Exists(document21))
                Directory.CreateDirectory(document21);
            if (FileUpload2.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload2.PostedFile.FileName);
                    FileUpload2.SaveAs(document21 + TextBox8.Text + extension);
                    document31 = TextBox8.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void FileUpload3_Load(object sender, EventArgs e)
    {
        try
        {
            document22 = Server.MapPath("~/sdesign2/" + "/");
            if (!Directory.Exists(document22))
                Directory.CreateDirectory(document22);
            if (FileUpload3.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload3.PostedFile.FileName);
                    FileUpload3.SaveAs(document22 + TextBox8.Text + extension);
                    document32 = TextBox8.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void FileUpload4_Load(object sender, EventArgs e)
    {
        try
        {
            document23 = Server.MapPath("~/sdesign3/" + "/");
            if (!Directory.Exists(document23))
                Directory.CreateDirectory(document23);
            if (FileUpload3.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload4.PostedFile.FileName);
                    FileUpload4.SaveAs(document23 + TextBox8.Text + extension);
                    document33 = TextBox8.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select distinct subcat from Category where topcat='" + DropDownList2.SelectedItem.ToString() + "'");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}