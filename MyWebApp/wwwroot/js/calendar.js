

function getObj(objID) {
    if (document.getElementById) { return document.getElementById(objID); }
    else if (document.all) { return document.all[objID]; }
    else if (document.layers) { return document.layers[objID]; }
}

function checkClick(e) {
    e ? evt = e : evt = event;
    CSE = evt.target ? evt.target : evt.srcElement;
    if (getObj('fc'))
        if (!isChild(CSE, getObj('fc')))
            getObj('fc').style.display = 'none';


}

function isChild(s, d) {
    while (s) {
        if (s == d)
            return true;
        s = s.parentNode;
    }
    return false;
}

function Left(obj) {
    var curleft = 0;

    if (obj.offsetParent) {
        while (obj = obj.offsetParent) {
            curleft += obj.offsetLeft;
        }
    }
    else if (obj.x)
        curleft += obj.x;
    return curleft;
}

function Top(obj) {
    var curtop = 0;
    if (obj.offsetParent) {
        while (obj = obj.offsetParent) {
            curtop += obj.offsetTop;
        }
    }
    else if (obj.y)
        curtop += obj.y;
    return (curtop);
}

var imgName = '';
var formId = document.form1;
if (formId == undefined) {
    formId = document.result;
}
if (formId.name == 'form1') {
    imgName = 'images';
}
else if (formId.name != 'form1') {
    imgName = '../images';
}
else {
    imgName = 'images';
}

document.write('<div style="position:absolute;z-index:1000000;"><table id="fc" style="position:absolute;z-index:1000000; border-collapse:collapse;background:#FFFFFF;border:1px solid #ABABAB;display:none" cellpadding=1>');
document.write('<tr><td style="cursor:pointer" onclick="csubm()"><img src="' + imgName + '/arrowleftmonth.gif"></td><td colspan=5 id="mns" align="center" style="font:bold 10px Verdana"></td><td align="right" style="cursor:pointer" onclick="caddm()"><img src="' + imgName + '/arrowrightmonth.gif"></td></tr>');
document.write('<tr><td align=center style="background:#ABABAB;font:10px Verdana">S</td><td align=center style="background:#ABABAB;font:10px Verdana">M</td><td align=center style="background:#ABABAB;font:10px Verdana">T</td><td align=center style="background:#ABABAB;font:10px Verdana">W</td><td align=center style="background:#ABABAB;font:10px Verdana">T</td><td align=center style="background:#ABABAB;font:10px Verdana">F</td><td align=center style="background:#ABABAB;font:10px Verdana">S</td></tr>');
for (var kk = 1; kk <= 6; kk++) {
    document.write('<tr>');
    for (var tt = 1; tt <= 7; tt++) {
        num = 7 * (kk - 1) - (-tt);
        document.write('<td id="v' + num + '" style="width:18px;height:18px">&nbsp;</td>');
    }
    document.write('</tr>');
}
document.write('</table></div>');

document.all ? document.attachEvent('onclick', checkClick) : document.addEventListener('click', checkClick, false);


// Calendar script
var now = new Date;
var sccm = now.getMonth();
var sccy = now.getFullYear();
var ccm = now.getMonth();
var ccy = now.getFullYear();

var updobj;
function lcs(ielem) {
    updobj = ielem;
    getObj('fc').style.left = (Left(ielem) + 'px');
    getObj('fc').style.top = (Top(ielem) + ielem.offsetHeight + 'px');
    getObj('fc').style.display = '';

    // First check date is valid
    curdt = ielem.value;
    curdtarr = curdt.split('/');
    isdt = true;
    for (var k = 0; k < curdtarr.length; k++) {
        if (isNaN(curdtarr[k]))
            isdt = false;
    }
    if (isdt & (curdtarr.length == 3)) {
        ccm = curdtarr[1] - 1;
        ccy = curdtarr[2];

        prepcalendar(curdtarr[0], curdtarr[1] - 1, curdtarr[2]);
    }


}

function evtTgt(e) {
    var el;
    if (e.target) el = e.target;
    else if (e.srcElement) el = e.srcElement;
    if (el.nodeType == 3) el = el.parentNode; // defeat Safari bug
    return el;
}
function EvtObj(e) { if (!e) e = window.event; return e; }
function cs_over(e) {
    evtTgt(EvtObj(e)).style.background = '#FFCC66';
}
function cs_out(e) {
    evtTgt(EvtObj(e)).style.background = '#7CBDE9';
}
function cs_click(e) {
    updobj.value = calvalarr[evtTgt(EvtObj(e)).id.substring(1, evtTgt(EvtObj(e)).id.length)];
    getObj('fc').style.display = 'none';

}

var mn = new Array('JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC');
var mnn = new Array('31', '28', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31');
var mnl = new Array('31', '29', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31');
var calvalarr = new Array(42);

function f_cps(obj) {
    obj.style.background = '#A0CFEF'; // background color
    obj.style.font = '9px Verdana';
    obj.style.color = '#333333';
    obj.style.textAlign = 'center';
    obj.style.textDecoration = 'none';
    obj.style.border = '1px solid #6487AE';
    obj.style.cursor = 'pointer';
}

function f_cpps(obj) {
    obj.style.background = '#C4D3EA';
    obj.style.font = '9px Verdana';
    obj.style.color = '#ABABAB';
    obj.style.textAlign = 'center';
    obj.style.textDecoration = 'line-through';
    obj.style.border = '1px solid #6487AE';
    obj.style.cursor = 'default';
}

function f_hds(obj) {
    obj.style.background = '#FFF799';
    obj.style.font = 'bold 9px Verdana';
    obj.style.color = '#333333';
    obj.style.textAlign = 'center';
    obj.style.border = '1px solid #6487AE';
    obj.style.cursor = 'pointer';
}

// day selected
function prepcalendar(hd, cm, cy) {
    var dd = '';
    var MM = '';
    now = new Date();
    sd = now.getDate();
    td = new Date();
    td.setDate(1);
    td.setFullYear(cy);
    td.setMonth(cm);
    cd = td.getDay();
    getObj('mns').innerHTML = mn[cm] + ' ' + cy;
    marr = ((cy % 4) == 0) ? mnl : mnn;
    for (var d = 1; d <= 42; d++) {
        f_cps(getObj('v' + parseInt(d)));

        if ((d >= (cd - (-1))) && (d <= cd - (-marr[cm]))) {
            dip = ((d - cd < sd) && (cm == sccm) && (cy == sccy));

            htd = ((hd != '') && (d - cd == hd));
            if (dip)
                f_cpps(getObj('v' + parseInt(d)));
            else if (htd)
                f_hds(getObj('v' + parseInt(d)));
            else
                f_cps(getObj('v' + parseInt(d)));

            getObj('v' + parseInt(d)).onmouseover = (dip) ? null : cs_over;
            getObj('v' + parseInt(d)).onmouseout = (dip) ? null : cs_out;
            getObj('v' + parseInt(d)).onclick = (dip) ? null : cs_click;

            getObj('v' + parseInt(d)).innerHTML = d - cd;

            //Date format in dd/MM/yyyy			
            if (((d - cd).toString()).length == 1) { dd = '0' + (d - cd); } else { dd = (d - cd); }
            if ((cm - (-1)).toString().length == 1) { MM = '0' + (cm - (-1)); } else { MM = (cm - (-1)); }


            //calvalarr[d]=''+(d-cd)+'/'+(cm-(-1))+'/'+cy;			
            calvalarr[d] = '' + dd + '/' + MM + '/' + cy;

        }
        else {
            getObj('v' + d).innerHTML = '&nbsp;';
            getObj('v' + parseInt(d)).onmouseover = null;
            getObj('v' + parseInt(d)).onmouseout = null;
            getObj('v' + parseInt(d)).style.cursor = 'default';
        }
    }
}

prepcalendar('', ccm, ccy);
//getObj('fc'+cc).style.visibility='hidden';

function caddm() {
    marr = ((ccy % 4) == 0) ? mnl : mnn;

    ccm += 1;
    if (ccm >= 12) {
        ccm = 0;
        ccy++;
    }
    cdayf();
    prepcalendar('', ccm, ccy);
}

function csubm() {
    marr = ((ccy % 4) == 0) ? mnl : mnn;

    ccm -= 1;
    if (ccm < 0) {
        ccm = 11;
        ccy--;
    }
    cdayf();
    prepcalendar('', ccm, ccy);
}

function cdayf() {
    if ((ccy > sccy) | ((ccy == sccy) && (ccm >= sccm)))
        return;
    else {
        ccy = sccy;
        ccm = sccm;
        cfd = scfd;
    }
}