using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class AdminDeleteUser : System.Web.UI.Page
{
    DatabaseConnection ob = new DatabaseConnection();
    DatabaseConnection ob1 = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pub();
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
            string str = "select * from uregister where status=1";
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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        ob1.exec("update uregister set status=2 where userid=" + c + "");
        ob1.exec("update Login set status=0 where uid=" + c + "");

        pub();
    }
}