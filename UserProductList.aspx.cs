using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserProductList : System.Web.UI.Page
{
     DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    DatabaseConnection ob2 = new DatabaseConnection();
    DataSet ds = new DataSet();
    int mid2, cartid;
    public static string uname, mimage, userid;
    string kfeature, accessories, spec = "";
    public static double offer = 0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["uname"]="rahul123";
        uname = Session["uname"].ToString();
         string mid1 = Request.QueryString[0];
        mid2 = Convert.ToInt32(mid1);
        
        //ob.dr = ob.ret_dr("select * from product where pcode=" + mid2 + "");
        //if (ob.dr.Read())
        //{
        //}
        if (!IsPostBack)
        {
            TextBox13.Text = "1".ToString();
          //  BindData();
            GetFeatures();
            
            
        }
    }
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
        string cmdstr = "Select * from product where pcode="+mid2+"";
        //  string str = "select * from design";
        ds = ob1.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 9;
        //LinkButton1.Enabled = !(pgd.IsLastPage);
        //LinkButton2.Enabled = !(pgd.IsFirstPage);

       // DataList1.DataSource = pgd;
       // DataList1.DataBind();
    }
    protected void GetFeatures()
    {
        ob.dr = ob.ret_dr("select * from product where pcode=" + mid2 + "");
        if (ob.dr.Read())
        {
            Image1.ImageUrl = ob.dr[17].ToString();
            Image2.ImageUrl = ob.dr[17].ToString();
            Image3.ImageUrl = ob.dr[18].ToString();
            Image4.ImageUrl = ob.dr[19].ToString();
            Image5.ImageUrl = ob.dr[20].ToString();
            Image6.ImageUrl = ob.dr[18].ToString();
            Image7.ImageUrl = ob.dr[19].ToString();
            Image8.ImageUrl = ob.dr[12].ToString();
            Label1.Text = ob.dr[3].ToString();
            Label2.Text = ob.dr[9].ToString();
            Label3.Text = ob.dr[22].ToString();
            kfeature = ob.dr[14].ToString();
            accessories = ob.dr[15].ToString();
            spec = ob.dr[16].ToString();
            Label4.Text = ob.dr[8].ToString();
            Label5.Text = ob.dr[7].ToString();
            Label6.Text = ob.dr[1].ToString();
            Label7.Text = ob.dr[6].ToString();
            Label8.Text = ob.dr[23].ToString();
            offer = Convert.ToDouble(ob.dr[10].ToString());
           
        }
        string[] kfeature1 = kfeature.Split(',');
        foreach (string k in kfeature1)
        {
            ListBox1.Items.Add("*  "+ k.ToString());
            ListBox1.Items.Add("\n");
        }
        string[] acc = accessories.Split(',');
        foreach (string a in acc)
        {
            ListBox2.Items.Add("*  " + a.ToString());
            ListBox2.Items.Add("\n");
        }
        string[] sp = spec.Split('@');
        foreach (string s in sp)
        {
            ListBox3.Items.Add("*  " + s.ToString());
            ListBox3.Items.Add("\n");
        }

    }
    public string getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(cartid),700)+1 from cart");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c.ToString();
    }
    public string getrate()
    {
        int c1 = 0;
        ob.dr = ob.ret_dr("select rating from product where pcode=" + mid2 + "");
        if (ob.dr.Read())
        {
            c1 = Convert.ToInt32(ob.dr[0].ToString());
        }
        c1++;
        return c1.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cart = getid();
        int stockno = 0;
        int salesno = 0;


        
        double op1=offer / 100;
        double oprice = Convert.ToDouble(Label2.Text) * op1;
        double dprice = (Convert.ToDouble(Label2.Text)*Convert.ToInt32(TextBox13.Text))-(oprice * Convert.ToInt32(TextBox13.Text));
        // string iname = lblCity.Text + ":" + lblCName.Text + ":" + lblCName.Text + ":" + Label6.Text;
        //Label4.Text =op1.ToString();
        //Label5.Text = dprice.ToString();
        cartid = Convert.ToInt32(cart);
        ob2.dr = ob2.ret_dr("select stock, sales from stock where pid=" + mid2 + "");
        if (ob2.dr.Read())
        {
            stockno = Convert.ToInt32(ob2.dr[0].ToString());
            salesno = Convert.ToInt32(ob2.dr[1].ToString());
        }
        if (stockno >= salesno)
        {
            ob.exec("insert into cart values(" + cartid + "," + mid2 + ",'" + Label1.Text + "','" + uname + "'," + Label2.Text + "," + offer+ "," + TextBox13.Text + ",0,"+dprice+")");
            //string rating = getrate();
            //ob1.exec("update product set rating=" + rating + " where pcode=" + mid2 + "");
            Response.Redirect("UserCheckOut.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Product Out of Stock')</script>");

        }
    }
}