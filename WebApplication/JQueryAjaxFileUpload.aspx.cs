using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using Helpers;

namespace WebApplication
{
    public partial class JQueryAjaxFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static void UploadFiles(string data)
        {
            ModelUpload param = ConvertersUtility.JsonDeserialize<ModelUpload>(data);

            string img = param.Urlname;
            string fullPath = @"D:\bb\" + param.Name;

            using (System.IO.FileStream fs = new System.IO.FileStream(fullPath, System.IO.FileMode.Create))
            {
                using (System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs))
                {
                    byte[] bytes = Convert.FromBase64String(img);//convert from base64
                    bw.Write(bytes);
                    bw.Close();
                }
                fs.Dispose();
            }
        }

    }
}