using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// make sure to include these namespaces
using System.Configuration;

namespace Ch19Cart
{
    public partial class CheckOut1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsSecureConnection) {
                string url = ConfigurationManager.AppSettings["SecurePath"]
                    + "CheckOut1.aspx";
                Response.Redirect(url);
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (IsValid) {
                Response.Redirect("CheckOut2.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            string url = ConfigurationManager.AppSettings["UnsecurePath"]
                + "Order.aspx";
            Response.Redirect(url);
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            string url = ConfigurationManager.AppSettings["UnsecurePath"]
                + "Order.aspx";
            Response.Redirect(url);
        }
    }
}