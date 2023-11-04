

var isFirefox;
var isIE;

function getAjax() {
    var xmlhttp = null;
    if (window.XMLHttpRequest) { xmlhttp = new XMLHttpRequest(); }
    // code for IE
    else if (window.ActiveXObject) { xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); }
    return xmlhttp;
}


function getxmlDOM(responseText) {
    var xmlDoc = null;
    if (window.ActiveXObject) {
        xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
        xmlDoc.async = false;
        xmlDoc.loadXML(responseText);
    }
    else if (document.implementation && document.implementation.createDocument) {
        xmlDoc = new DOMParser().parseFromString(responseText, 'text/xml');
    }
    return xmlDoc;
}


function getElement(id) {
    if (isIE) {
        return document.all[id];
    }
    else {
        return document.getElementById(id);
    }
}


// Get browser type
function sniffBrowserType() {
    isFirefox = (navigator.appName == "Netscape");
    isIE = (navigator.appName == "Microsoft Internet Explorer");
}
