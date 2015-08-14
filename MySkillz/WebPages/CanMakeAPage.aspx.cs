using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MySkillz.WebPages
{
    public partial class CanMakeAPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            tb1.Text = "Starting...";
            btnSubmit.Click += new EventHandler(this.btnSubmit_Click);
        }

        void btnSubmit_Click(Object sender, EventArgs e)
        {
            tb1.Text = "Coming soon...";
            btnSubmit.Enabled = false;
            btnSubmit.Style.Add("cursor","default");
        }
    }
}