using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_6
{

    public partial class Test : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string did = Request.QueryString["id"].ToString();
                DataTable dt = db.Executedatatable("select Design_name,Dept_name from tbl_Designation d inner join tbl_Department dept on d.Dept_id=dept.Dept_id where Design_id='" + did + "'");
                Label1.Text = dt.Rows[0]["Design_name"].ToString();
                Label2.Text = dt.Rows[0]["Dept_name"].ToString();
            }
        }
    }
}