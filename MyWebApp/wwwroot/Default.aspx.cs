using System;
using System.Data;

public partial class Default : System.Web.UI.Page
{
    DataTable myTable;

    FlightServices.FlightServices FlightSrvDropDown = new FlightServices.FlightServices();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            FillAllAirlines();
            FillLeavingFrom("GB");
            Session["_SessionId"] = Session.SessionID;
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {

        txtDepartDate.Attributes.Add("onClick", "event.cancelBubble=true;this.select();lcs(this);");
        txtDepartDate.Attributes.Add("onFocus", "this.select();lcs(this)");
        txtReturnDate.Attributes.Add("onClick", "event.cancelBubble=true;this.select();lcs(this);");
        txtReturnDate.Attributes.Add("onFocus", "this.select();lcs(this)");
        rBtnListTripType.Attributes.Add("onClick", "checkTripType(this);");
    }

    public void FillAllAirlines()
    {
        DataSet ds = new DataSet();
        ds = FlightSrvDropDown.GetAllAirlines();
        myTable = ds.Tables[0];
        DataRow dr = myTable.NewRow();
        dr[0] = "List of all airlines";
        dr[1] = "";
        myTable.Rows.InsertAt(dr, 0);
        ddlAirlines.DataSource = myTable;
        ddlAirlines.DataTextField = myTable.Columns[0].ColumnName;
        ddlAirlines.DataValueField = myTable.Columns[1].ColumnName;
        ddlAirlines.DataBind();
    }
    public void FillLeavingFrom(string CountryCode)
    {
        DataSet ds = new DataSet();
        ds = FlightSrvDropDown.getIBECityName(CountryCode);
        myTable = ds.Tables[0];
        DataRow dr = myTable.NewRow();
        dr[0] = "-All London Airports-";
        dr[1] = "LON";
        myTable.Rows.InsertAt(dr, 0);
        ddlLeavingFrom.DataSource = myTable;
        ddlLeavingFrom.DataTextField = myTable.Columns[0].ColumnName;
        ddlLeavingFrom.DataValueField = myTable.Columns[1].ColumnName;
        ddlLeavingFrom.DataBind();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bool isreturn = true;
        bool isDirectFlight = false;
        if (rBtnListTripType.Items[0].Selected)
            isreturn = true;
        else
            isreturn = false;
        if (chkDirect.Checked)
        {
            isDirectFlight = true;
        }
        else
        {
            isDirectFlight = false;
        }

        string txtdestination = string.Empty;
        string tmpdes = txtDestination.Text.Trim();
        int openbracketTo = tmpdes.LastIndexOf("[");
        if (openbracketTo != -1)
        {
            int closebracketTo = tmpdes.LastIndexOf("]");
            string tempAirCodeTo = tmpdes.Substring(openbracketTo + 1, (closebracketTo - openbracketTo) - 1);
            txtdestination = tempAirCodeTo;

        }
        else
        {
            txtdestination = txtDestination.Text.Trim();


        }
        //city code search end
        SearchDetail objDetail = new SearchDetail();
        objDetail.HapNumber = System.Configuration.ConfigurationManager.AppSettings["HapNumber"].ToString();
        objDetail.HapType = System.Configuration.ConfigurationManager.AppSettings["HapType"].ToString();
        objDetail.UserID = System.Configuration.ConfigurationManager.AppSettings["UserID"].ToString();
        objDetail.Password = System.Configuration.ConfigurationManager.AppSettings["Password"].ToString();
        objDetail.LeavingFrom = ddlLeavingFrom.SelectedValue;
        objDetail.Destination = txtdestination;
        objDetail.DepartDate = txtDepartDate.Text;
        objDetail.ReturnDate = txtReturnDate.Text;
        objDetail.Class = ddlClass.SelectedValue;
        objDetail.Airlines = ddlAirlines.SelectedValue;
        objDetail.Adult = ddlAdult.SelectedValue;
        objDetail.Child = ddlChild.SelectedValue;
        objDetail.Infant = ddlInfant.SelectedValue;
        objDetail.IsReturn = isreturn;
        objDetail.IsDirectFlight = isDirectFlight;
        objDetail.CompCode = System.Configuration.ConfigurationManager.AppSettings["CompCode"].ToString();
        objDetail.Sessionval = Session.SessionID;
        Session["SearchDetails"] = objDetail;


        btnSearch.Enabled = false;

        Session["nextPageUrl"] = "Result.aspx";
        Response.Redirect("Forms/SearchWait.aspx");


    }
}
