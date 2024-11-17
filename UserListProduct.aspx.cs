using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserListProduct : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DataSet ds = new DataSet();
    public static int count = 1;
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
        string cmdstr = "Select * from product where status=0";
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
        if (!IsPostBack)
        {
            BindData();
            Label1.Text = count.ToString();
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Motherboard'");
            if (ob.dr.Read())
            {
                Label3.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='cooling system'");
            if (ob.dr.Read())
            {
                Label2.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Memory'");
            if (ob.dr.Read())
            {
                Label4.Text = ob.dr[0].ToString();

            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Storage'");
            if (ob.dr.Read())
            {
                Label5.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Laptops'");
            if (ob.dr.Read())
            {
                Label6.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Cabinet'");
            if (ob.dr.Read())
            {
                Label7.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(subcat) from product where subcat='Monitor'");
            if (ob.dr.Read())
            {
                Label8.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(pcompany) from product where pcompany='INTEL'");
            if (ob.dr.Read())
            {
                Label9.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(pcompany) from product where pcompany='AMD'");
            if (ob.dr.Read())
            {
                Label10.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(pcompany) from product where pcompany='HP'");
            if (ob.dr.Read())
            {
                Label11.Text = ob.dr[0].ToString();
            }
            ob.dr = ob.ret_dr("select count(pcompany) from product where pcompany='ASUS'");
            if (ob.dr.Read())
            {
                Label13.Text = ob.dr[0].ToString();
            }

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        count++;
        Label1.Text = count.ToString();
        CurrentPageIndex++;
        BindData(); 
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        count--;
        Label1.Text = count.ToString();
        CurrentPageIndex--;
        BindData(); 
    }
}