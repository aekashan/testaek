using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace WebApplication
{
    public partial class AjaxAsyncronous : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

        }

        [WebMethod]
        public static Object Getdata(string data)
        {
            System.Threading.Thread.Sleep(200000);
            return null;
        }
    }
}