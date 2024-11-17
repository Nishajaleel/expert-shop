using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class UserCheckOut : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DataSet ds = new DataSet();
    public static int count = 1;
    public static string uname = "";
    public static string dprice,tquantity = "";
    public static int scount = 0;
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
    int pg = 0;
    protected void BindData()
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "Select * from cart where uname='"+uname+"' and status=0";
        //  string str = "select * from design";
        ds = ob1.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        //LinkButton1.Enabled = !(pgd.IsLastPage);
        //LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["uname"] = "rahul123";
        uname = Session["uname"].ToString();
        if (!IsPostBack)
        {
            BindData();
            calculatetotal();
            shipping();
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        ob1.exec("delete from cart where cartid=" + c + "");
        BindData();
        calculatetotal();
    }
    public void shipping()
    {

        ob.dr = ob.ret_dr("select * from uregister where username='" + uname + "'and status=1");
        if (ob.dr.Read())
        {
            TextBox13.Text = ob.dr[1].ToString();
            TextBox1.Text = ob.dr[16].ToString();
            TextBox2.Text = ob.dr[2].ToString();
            TextBox3.Text = ob.dr[5].ToString();
            TextBox4.Text = ob.dr[13].ToString();
            TextBox5.Text = ob.dr[15].ToString();
            TextBox6.Text = ob.dr[14].ToString();
            TextBox7.Text = ob.dr[4].ToString();

        }

    }
    public void calculatetotal()
    {

       // ob.dr = ob.ret_dr("select sum(CAST(price AS int)),sum(quantity) from cart where uname='" + userid + "'and status=0");
        ob.dr = ob.ret_dr("select sum(dprice),sum(quantity) from cart where uname='" + uname + "'and status=0");
        if (ob.dr.Read())
        {

            dprice = ob.dr[0].ToString();
            tquantity = ob.dr[1].ToString();
        }
        Label1.Text = dprice.ToString();
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(salesid),800)+1 from sales");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}