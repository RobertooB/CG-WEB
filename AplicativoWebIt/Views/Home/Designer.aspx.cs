using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using DevExpress.Web;
using System.Web.UI.WebControls;

namespace AplicativoWebIt.Views.Home
{
    public partial class Designer : System.Web.UI.Page
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