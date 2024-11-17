using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    DatabaseConnection ob = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select count(inid) from iregister where status=0");
        if (ob.dr.Read())
        {
            Label1.Text = "("+ob.dr[0].ToString()+")";
        }
        ob.dr = ob.ret_dr("select count(userid) from uregister where status=0");
        if (ob.dr.Read())
        {
            Label2.Text = "(" + ob.dr[0].ToString() + ")";
        }
    }
}
