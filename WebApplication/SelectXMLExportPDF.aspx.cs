using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Xml.Linq;
using Model;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;

namespace WebApplication
{
    public partial class SelectXMLExportPDF : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected static  void btnExport()
        {
            StringWriter sw = new StringWriter();
            HttpResponse aa = new HttpResponse(sw);
            aa.ContentType = "application/pdf";
            aa.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
            aa.Cache.SetCacheability(HttpCacheability.NoCache);
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            //RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, aa.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            aa.Write(pdfDoc);
            aa.End();

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

            btnExport();

            return homePhone;
        }
    }
}