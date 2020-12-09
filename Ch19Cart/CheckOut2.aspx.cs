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
    public partial class CheckOut2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsSecureConnection) {
                string url = ConfigurationManager.AppSettings["SecurePath"]
                    + "CheckOut2.aspx";
                Response.Redirect(url);
            }
            else {
                var today = DateTime.Today;
                ddlYear.Items.Add(today.Year.ToString());
                ddlYear.Items.Add((today.Year + 1).ToString());
                ddlYear.Items.Add((today.Year + 2).ToString());
            }
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
            if (IsValid) {
                Response.Redirect("Confirmation.aspx");
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