using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ResponsePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string aa = Request.Form["name"];
            Response.Write(aa);
        }
    }
}