using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Xml.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

public partial class ManagerApproveQuoatation : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    public static string order = "";
    public static string qid = "";
    public static string muname = "";
    public static string shopname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["muname"] = "mahesh";
        muname = Session["muname"].ToString();
        if (!IsPostBack)
        {
            //  Session["muname"] = "mahesh";
            muname = Session["muname"].ToString();
            getsname();
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            string str = "select distinct oid from quotation where status=1 and sname='"+shopname+"'";
            ob.dr = ob.ret_dr(str);
            while (ob.dr.Read())
            {
                DropDownList7.Items.Add(ob.dr[0].ToString());
            }
        }
    }
    void getsname()
    {
        ob.dr = ob.ret_dr("select sname from mregister where username='" + muname + "'");
        if (ob.dr.Read())
        {
            shopname = ob.dr[0].ToString();
        }
    }
    public DataSet pubdoc(string str)
    {
        DataSet ds = new DataSet();
        try
        {
            ds = ob.ret_ds(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }

    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select * from quotation where oid=" + DropDownList7.SelectedItem.ToString() + " and status=1";
            ds = pubdoc(str);
            if (ds != null)
            {

                DataList1.Visible = true;
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            else
            {
                DataList1.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('Data Not Available');", true);

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        pub();
        string str = "select distinct iuname from quotation where oid="+DropDownList7.SelectedItem.ToString()+"";
        ob.dr = ob.ret_dr(str);
        if (ob.dr.Read())
        {
            TextBox8.Text = ob.dr[0].ToString();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        string str = "select tamt from quotation where quid=" + c + "";
        ob.dr = ob.ret_dr(str);
        if (ob.dr.Read())
        {
            TextBox13.Text = ob.dr[0].ToString();
        }
        qid = c;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ob1.exec("update quotation set offeramount="+TextBox13.Text+", status=2 where quid=" + qid+ "");
        pub();
        TextBox13.Text = "";
        DropDownList7.SelectedIndex = 0;
      //  DropDownList8.SelectedIndex = 0;
    }
}