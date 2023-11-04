var dates = {
    convert: function (d) {
        // Converts the date in d to a date-object. The input can be:
        //   a date object: returned without modification
        //  an array      : Interpreted as [year,month,day]. NOTE: month is 0-11.
        //   a number     : Interpreted as number of milliseconds
        //                  since 1 Jan 1970 (a timestamp) 
        //   a string     : Any format supported by the javascript engine, like
        //                  "YYYY/MM/DD", "MM/DD/YYYY", "Jan 31 2009" etc.
        //  an object     : Interpreted as an object with year, month and date
        //                  attributes.  **NOTE** month is 0-11.
        return (
            d.constructor === Date ? d :
                d.constructor === Array ? new Date(d[0], d[1], d[2]) :
                    d.constructor === Number ? new Date(d) :
                        d.constructor === String ? new Date(d) :
                            typeof d === "object" ? new Date(d.year, d.month, d.date) :
                                NaN
        );
    },
    compare: function (a, b) {
        // Compare two dates (could be of any type supported by the convert
        // function above) and returns:
        //  -1 : if a < b
        //   0 : if a = b
        //   1 : if a > b
        // NaN : if a or b is an illegal date
        // NOTE: The code inside isFinite does an assignment (=).
        return (
            isFinite(a = this.convert(a).valueOf()) &&
                isFinite(b = this.convert(b).valueOf()) ?
                (a > b) - (a < b) :
                NaN
        );
    },
    inRange: function (d, start, end) {
        // Checks if date in d is between dates in start and end.
        // Returns a boolean or NaN:
        //    true  : if d is between start and end (inclusive)
        //    false : if d is before start or after end
        //    NaN   : if one or more of the dates is illegal.
        // NOTE: The code inside isFinite does an assignment (=).
        return (
            isFinite(d = this.convert(d).valueOf()) &&
                isFinite(start = this.convert(start).valueOf()) &&
                isFinite(end = this.convert(end).valueOf()) ?
                start <= d && d <= end :
                NaN
        );
    }
}

function CompareDate(date1, date2) {
    var d1 = date1;
    var d2 = date2;
    var dateF1 = d1.split('/');
    var dateF2 = d2.split('/');
    d1 = dates.convert(dateF1[1] + '/' + dateF1[0] + '/' + dateF1[2]);
    d2 = dates.convert(dateF2[1] + '/' + dateF2[0] + '/' + dateF2[2]);
    var strVal = dates.compare(d1, d2);
    return strVal;
}

function ChkValueS() {
    var radioButtons = document.getElementsByName('rBtnListTripType');
    var txtDestination = document.getElementById('txtDestination');
    var DateSelector1 = document.getElementById('txtDepartDate');
    var DateSelectorReturn = document.getElementById('txtReturnDate');

    var isreturn = document.getElementById('rBtnListTripType');
    if (txtDestination.value == "") {
        alert("Please insert Destination.");
        txtDestination.focus();
        return false;
    }
    if (DateSelector1.value == "") {
        alert("Please select a valid Departure Date.");
        DateSelector1.focus();
        return false;
    }
    /*if (DateSelector1.value != "") {
    var dif = CheckDepartureDate();
    if (dif < 4) {
    alert("If you like to travel within the next three days, please call me");
    DateSelector1.focus();
    return false;
    }
    }*/
    var radioChk;
    if (radioButtons.length == 3) {
        radioChk = radioButtons[1].checked;
    }
    else {
        radioChk = radioButtons[0].checked;
    }
    if (radioChk == true) {
        if (DateSelectorReturn.value == "") {
            alert("Please select a valid Return Date.");
            DateSelectorReturn.focus();
            return false;
        }
        if (DateSelectorReturn.value != "") {
            var DateChk = CompareDate(DateSelector1.value, DateSelectorReturn.value);
            if (DateChk == 1) {
                alert("Please select a valid Return Date.");
                DateSelectorReturn.focus();
                return false;
            }
        }
    }
    else {
        if (DateSelector1.value == "") {
            alert("Please select a valid Departure Date.");
            DateSelector1.focus();
            return false;
        }
    }

}

/*function CheckDepartureDate() {
var currentDate = new Date();
var dd = currentDate.getDate();
var mm1 = currentDate.getMonth() + 1
var mm = '0' + mm1;
var yy = currentDate.getFullYear();
 
//var outDate = currentDate.getDate();
var inDate = dd + '/' + mm + '/' + yy;
 
var outDate = document.getElementById('txtDepartDate').value;
//alert(CalDate);
//var inDate=new Date(CalDate.value);	
var one_day = 1000 * 60 * 60 * 24;
var x;
var y;
if (inDate.indexOf("/") != -1) { x = inDate.split("/"); } else { x = inDate.split("-"); }
if (outDate.indexOf("/") != -1) { y = outDate.split("/"); } else { y = outDate.split("-"); }
var date1 = new Date(x[2], (x[1] - 1), x[0]);
var date2 = new Date(y[2], (y[1] - 1), y[0]);
var month1 = x[1] - 1;
var month2 = y[1] - 1;
//Calculate difference between the two dates, and convert to days
var _Diff = Math.ceil((date2.getTime() - date1.getTime()) / (one_day));
return _Diff;
 
}*/