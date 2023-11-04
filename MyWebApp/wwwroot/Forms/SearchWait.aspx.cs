using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_SearchWait : System.Web.UI.Page
{
    FlightServices.FlightServices fltsrv = new FlightServices.FlightServices();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["_SessionId"] != null)
            {
                string CurrentSessionId = Session["_SessionId"].ToString();
                if (CurrentSessionId != Session.SessionID)
                {
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
           
        }
        catch { }


    }
}
