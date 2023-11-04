using System;

public partial class Forms_CheckStatus : System.Web.UI.Page
{
    FlightServices.FlightServices fltsrv = new FlightServices.FlightServices();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string CurrentSessionId = Session["_SessionId"].ToString();
            if (CurrentSessionId != Session.SessionID)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {

                if (Session["SearchDetails"] != null)
                {
                    SearchDetail objSearchDtl = (SearchDetail)Session["SearchDetails"];


                    string url = fltsrv.SearchFlight(objSearchDtl.HapNumber, objSearchDtl.HapType, objSearchDtl.UserID, objSearchDtl.Password, objSearchDtl.LeavingFrom, objSearchDtl.Destination, objSearchDtl.DepartDate,
                        objSearchDtl.ReturnDate, objSearchDtl.Class, objSearchDtl.Airlines, Convert.ToInt32(objSearchDtl.Adult), Convert.ToInt32(objSearchDtl.Child),
                        Convert.ToInt32(objSearchDtl.Infant), objSearchDtl.IsReturn, objSearchDtl.CompCode, objSearchDtl.Sessionval, objSearchDtl.IsDirectFlight);
                    //hidUrl.Value = url;
                    Session["Srvurl"] = url;
                    Session.Remove("SearchDetails");

                }

                Response.Clear();
                Response.Write("1");
                Response.End();
            }
        }
        catch
        {
        }

    }
}
