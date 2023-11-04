using System.Web.Services;

/// <summary>
/// Summary description for AutoComplete
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class AutoComplete : System.Web.Services.WebService {
   

    public AutoComplete () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    [WebMethod]
    public string[] GetCompletionList(string prefixText)
    {
       //AirportAuto.AirportList oAuto = new AirportAuto.AirportList();
        FlightServices.FlightServices oAuto = new FlightServices.FlightServices();

        return oAuto.GetCompletionList(prefixText);
    }

    
   
    
}

