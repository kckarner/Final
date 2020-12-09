using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ch19Cart
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public string HeaderText {
            set { lblPageHeader.Text = value;  }
        }

        public string FormClass {
            set {
                if (value.StartsWith("form-"))
                    form1.Attributes["class"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    }
}