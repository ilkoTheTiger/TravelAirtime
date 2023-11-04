using System;

/// <summary>
/// Summary description for SearchDetail
/// </summary>
public class SearchDetail
{ 
    #region Data members
        string _HapNumber;
        string _HapType;
        string _UserID;
        string _Password;
        string _LeavingFrom;
        string _Destination;
        string _DepartDate;
        string _ReturnDate;
        string _Class;
        string _Airlines;
        string _Adult;
        string _Child;
        string _Infant;
        bool _IsReturn;
        string _CompCode;
        string _Sessionval;
        bool _isDirectFlight;
      #endregion

    #region Constructor
        public SearchDetail()
	{
		//
		// TODO: Add constructor logic here
        //
        this._HapNumber = string.Empty;
        this._HapType = string.Empty;
        this._UserID = string.Empty;
        this._Password = string.Empty;
        this._LeavingFrom = string.Empty;
        this._Destination = string.Empty;
        this._DepartDate = string.Empty;
        this._ReturnDate = string.Empty;
        this._Class = string.Empty;
        this._Airlines = string.Empty;
        this._Adult = string.Empty;
        this._Child = string.Empty;
        this._Infant = string.Empty;
        this._IsReturn = false;
        this._CompCode = string.Empty;
        this._Sessionval = string.Empty;
        this._isDirectFlight = false;

    }
        #endregion

    #region PROPERTY
        public string HapNumber
        {
            get { return this._HapNumber; }
            set { this._HapNumber = value; }
        }
        public string HapType
        {
            get { return this._HapType; }
            set { this._HapType = value; }
        }
        public string UserID
        {
            get { return this._UserID; }
            set { this._UserID = value; }

        }
        public string Password
        {
            get { return this._Password; }
            set { this._Password = value; }
        }
        public string LeavingFrom
        {
            get { return this._LeavingFrom; }
            set { this._LeavingFrom = value; }
        }
        public string Destination
        {
            get { return this._Destination; }
            set { this._Destination = value; }
        }
        public string DepartDate
        {
            get { return this._DepartDate; }
            set { this._DepartDate = value; }
        }
        public string ReturnDate
        {
            get { return this._ReturnDate; }
            set { this._ReturnDate = value; }
        }
        public string Class
        {
            get { return this._Class; }
            set { this._Class = value; }
        }
        public string Airlines
        {
            get { return this._Airlines; }
            set { this._Airlines = value; }
        }
        public string Adult
        {
            get { return this._Adult; }
            set { this._Adult = value; }
        }
        public string Child
        {
            get { return this._Child; }
            set { this._Child = value; }
        }
        public string Infant
        {
            get { return this._Infant; }
            set { this._Infant = value; }
        }
        public bool IsReturn
        {
            get { return this._IsReturn; }
            set { this._IsReturn = value; }
        }
        public string CompCode
        {
            get { return this._CompCode; }
            set { this._CompCode = value; }
        }
        public string Sessionval
        {
            get { return this._Sessionval; }
            set { this._Sessionval = value; }
        }
        public bool IsDirectFlight
        {
            get { return this._isDirectFlight; }
            set { this._isDirectFlight = value; }
        }


    #endregion

}
