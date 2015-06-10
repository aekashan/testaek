using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace WebApplication.AngularJS
{
    public partial class CallWebMethod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetEmployees(string data)
        {
            string aa = "";
            //ResourcesManagerBL resBl = new ResourcesManagerBL(langId);
            //var resources = resBl.GetResourcesForLanguage(langId);
            //return Json.ToJson(resources);
            return null;
        }
    }
}