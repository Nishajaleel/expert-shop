using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ManagerUpdateProduct : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DataSet ds = new DataSet();
    public static int cstock, tstock;
    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        CurrentPageIndex = 0;
        string catcode = "";
        PagedDataSource pgd = new PagedDataSource();
        //try
        //{
        ob.dr = ob.ret_dr("select * from product where pcode=" + TextBox8.Text + "");
        if (ob.dr.Read())
        {
            TextBox19.Text = ob.dr[1].ToString();
            TextBox20.Text = ob.dr[2].ToString();
            TextBox3.Text = ob.dr[3].ToString();
            TextBox6.Text = ob.dr[4].ToString();
            TextBox2.Text = ob.dr[22].ToString();
            TextBox11.Text = ob.dr[5].ToString();
            TextBox1.Text = ob.dr[6].ToString();
            TextBox12.Text = ob.dr[7].ToString();
            TextBox13.Text = ob.dr[8].ToString();
            TextBox14.Text = ob.dr[9].ToString();
            TextBox15.Text = ob.dr[10].ToString();
            TextBox4.Text = ob.dr[11].ToString();
            TextBox5.Text = ob.dr[12].ToString();
            TextBox7.Text = ob.dr[13].ToString();
            TextBox9.Text = ob.dr[14].ToString();
            TextBox10.Text = ob.dr[15].ToString();
            TextBox16.Text = ob.dr[16].ToString();



        }
        
        string str = "select mimage,simge1,simge2,simage3 from product where pcode=" + TextBox8.Text + "";
        ds = ob1.ret_ds(str);
        pgd.DataSource = ds.Tables[0].DefaultView;
        //pgd.CurrentPageIndex = CurrentPageIndex;
        //pgd.AllowPaging = true;
        //pgd.PageSize = 4;
        DataList1.DataSource = pgd;
        DataList1.DataBind();
        //}
        //catch (Exception ex)
        //{
        //    Session["err"] = ex.ToString();
        //    Response.Redirect("error.aspx");
        //}
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        ob.exec("update Product set ptitle ='" + TextBox2.Text + "',color='" + TextBox12.Text + "', price=" + TextBox14.Text + ", offer='" + TextBox15.Text + "', kfeature='" + TextBox9.Text + "', accessories='" + TextBox10.Text + "',spec='" + TextBox16.Text + "', warranty='" + TextBox1.Text + "' where pcode=" + TextBox8.Text + "");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Product Update Successfully');", true);
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox3.Text = "";
        TextBox6.Text = "";
        TextBox2.Text = "";
        TextBox11.Text = "";
        TextBox1.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox16.Text = "";
       
        TextBox8.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ob.exec("delete from Product where pcode=" + TextBox8.Text + "");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Product Deleted Successfully');", true);
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox3.Text = "";
        TextBox6.Text = "";
        TextBox2.Text = "";
        TextBox11.Text = "";
        TextBox1.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox16.Text = "";

        TextBox8.Text = "";

    }
}