using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace AplicativosIT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        const string UploadDirectory = "C:/uploads";


        protected void UploadControl_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            string resultExtension = Path.GetExtension(e.UploadedFile.FileName);
            string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
            string resultFileUrl = UploadDirectory + resultFileName;
            string resultFilePath = MapPath(resultFileUrl);
            e.UploadedFile.SaveAs(resultFilePath);

        }

        protected void ASPxTextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}