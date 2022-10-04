using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Collections;

namespace AplicativoWebIt.Views.Home
{
    public partial class Admin : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void detailGrid_DataSelect(object sender, EventArgs e)
        {
            Session["fk_environment"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
    }
}