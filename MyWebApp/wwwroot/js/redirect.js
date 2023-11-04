var nextPageUrl = '';
var req;
var para = "k=''";
var checkStatusUrl = "CheckStatus.aspx";
var IntervalId = window.setInterval("checkStatus(nextPageUrl)", 5000);
function checkStatus(Url) {

    nextPageUrl = Url;
    req = getAjax();

    if (req != null) {
        req.open("POST", checkStatusUrl, true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.setRequestHeader("Content-length", para.length);
        req.setRequestHeader("Connection", "close");
        req.onreadystatechange = process;
        //req.open("GET", checkStatusUrl, true);
        req.send(para);
    }
}

function process() {

    if (req.readyState == 4) {
        // only if "OK"			
        if (req.status == 200) {
            if (req.responseText == "1") {
                // a "1" means it is done, so here is where you redirect
                // to the confirmation page	

                clearInterval(IntervalId);
                window.open(nextPageUrl, '_self');
                document.location.replace(nextPageUrl);
            }
            else if (req.responseText == "-1") {
                document.getElementById('err').innerHTML = "Server is busy, please try again after some time";
                document.getElementById('err').innerHTML = "";
            }

            // NOTE: any status other than 200 or any response other than
            // "1" require no action
        }

    }
}