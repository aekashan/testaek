using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Xml.Linq;
using Model;

namespace WebApplication
{
    public partial class SelectXMLExportPNG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object Getdata()
        {
            XElement xelement = XElement.Load(HttpContext.Current.Server.MapPath(@"~/File/DataX.xml"));
            var homePhone = (from phoneno in xelement.Elements("Employee")
                             where (string)phoneno.Element("Phone").Attribute("Type") == "Home"
                             select new ModelEmployees {
                                 EmpId = phoneno.Element("EmpId").Value
                                ,Name = phoneno.Element("Name").Value
                                ,Sex = phoneno.Element("Sex").Value
                                ,Phone = phoneno.Element("Phone").Value
                                
                             }).ToList<ModelEmployees>();

            return homePhone;
        }
    }
}