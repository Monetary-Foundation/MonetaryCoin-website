using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Drawing;
public partial class UserPanel_Member_Default : System.Web.UI.Page
{
    DataUtility oDataUtility = new DataUtility();
    Int64 Regno;
    int ID, OTPSECURITYONOFF;
    public string clients;
    int minvalue, maxvalue;
    int result1;
    int payid;
    long lngRegNo, ulngRegNo;
    double Totalcoin = 0, coin = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString.Count > 0)
            {
                Session["MaxReg"] = Convert.ToInt64(Request.QueryString["r"]);

            }
            if (Session["MaxReg"] == null)
            {
                Response.Redirect("../../Login.aspx");
            }
            else
            {
                hypernk233.NavigateUrl = "../../Registration.aspx?REF=" + Convert.ToString(Session["loginid"]);
                hypernk233.Target = "blank";
                hypernk233.Text = "fabis.ag";
               // affiliateLink.Text = "http://demo.bitdevelop.co/Registration.aspx?Ref=" + Convert.ToString(Session["loginid"]);
                Regno = Convert.ToInt64(Session["MaxReg"]);

            }
            if (!IsPostBack)
            {
                coinBind();
                fillinfo();
                BindValue();
            }
        }
        catch { }
    }
    protected void coinBind()
    {
        DataTable ddt = oDataUtility.GetDataTable("sp_coint_wallet");
        if (ddt.Rows.Count > 0)
        {
            StateGrid.DataSource = ddt;
            StateGrid.DataBind();
        }
    }
    protected void fillinfo()
    {
        try
        {

            DataTable dtwalet = oDataUtility.GetDataTable("SPGetDashboard'" + Regno + "'");
            if (dtwalet.Rows.Count > 0)
            {

                //mAINE wALLET
                lblwalletcoin.Text = String.Format("{0:0.00000000}", (dtwalet.Rows[0]["coinwallet"]));
              //  lblsoldphase1.Text = String.Format("{0:0}", (dtwalet.Rows[0]["phase1"]));
                lblcoinavailable.Text = String.Format("{0:0.00000000}", (dtwalet.Rows[0]["totalAvilableCoin"]));
                lbltopupwallet.Text = Convert.ToString(dtwalet.Rows[0]["TopupWallet"]);
                lblbtcbalance.Text = String.Format("{0:0.00000000}", (dtwalet.Rows[0]["TopupWallet"])).ToString();
                lblcoinrate.Text = String.Format("{0:0.00}",(dtwalet.Rows[0]["CoinRate"])).ToString();
                lblcoinprice.Text = String.Format("{0:0.00}",(dtwalet.Rows[0]["CoinRate"]));
              
            }
        }
        catch (Exception ex)
        {
            //lblcoinsold.Text = ex.Message;


        }

    }
   
    protected bool IsMRCeric(string sText)
    {
        string ValidChars = ".0123456789";
        bool IsMRCber = true;
        string Char = "";
        for (int i = 0; i < sText.Length && IsMRCber == true; i++)
        {
            Char = sText.Substring(i, 1);
            if (ValidChars.IndexOf(Char) == -1)
            {
                IsMRCber = false;
            }
        }
        return IsMRCber;
    }
    public void BindValue()
    {
        DataTable dt = oDataUtility.GetDataTable("usp_getminmaxvalue");
        if (dt.Rows.Count > 0)
        {

            minvalue = Convert.ToInt32(dt.Rows[0]["minrange"].ToString());
            maxvalue = Convert.ToInt32(dt.Rows[0]["maxrange"].ToString());
            lblMsg.Text = "Buy Limit: Minimum:-" + minvalue + " Fabis, Maximum:- " + maxvalue + " Fabis";
            lblMsg.ForeColor = Color.Red;
        }
    }
  
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            BindValue();
            lblMsg.Text = "";
            if (string.IsNullOrEmpty(txtamount.Text.Trim()))
            {
                lblMsg.Text = "Enter Amount Coin !!";
                lblMsg.ForeColor = Color.Red;
                txtamount.Focus();
                return;
            }
            if (!IsMRCeric(txtamount.Text.Trim()))
            {
                lblMsg.Text = "Enter Correct  Quanity !";
                lblMsg.ForeColor = Color.Red;
                txtamount.Focus();
                return;
            }
            if (Convert.ToInt32(txtamount.Text) >= minvalue && Convert.ToInt32(txtamount.Text) <= maxvalue)
            {
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "Buy Limit: Minimum:-" + minvalue + " MRC, Maximum:- " + maxvalue + " MRC";
                lblMsg.ForeColor = Color.Red;

                txtamount.Focus();
                return;
            }

            //double min = 0.0001, bytecoinwallet = 0;
            double min = 1, bytecoinwallet = 0, qnty = 0;
            qnty = Convert.ToDouble(txtamount.Text.Trim());
            if (qnty < min)
            {
                lblMsg.Text = "Please Enter Min Coin " + min.ToString();
                lblMsg.ForeColor = Color.Red;
                txtamount.Focus();
                return;
            }
           
            double epoints = qnty * Convert.ToDouble(lblcoinrate.Text.Trim());
            hfusdprice.Value = epoints.ToString();
          
            try
            {
                //live btc rate in usd
                WebClient client = new WebClient();
                string baseurl = "https://blockchain.info/tobtc?currency=USD&value=" + Convert.ToString(hfusdprice.Value) + "";
                Stream data = client.OpenRead(baseurl);
                StreamReader reader = new StreamReader(data);
                string sbtc = reader.ReadToEnd();
                data.Close();
                reader.Close();
                hfbtcamt.Value = sbtc.ToString();

            }
            catch { }
            // double packagePriceinUsd = 0;
            // packagePriceinUsd = Convert.ToDouble(hfusdprice.Value) * epoints;
            lblMsg.Text = "Total Coin Purchase of USD Amount is " + Convert.ToString(hfusdprice.Value) + "  & BTC Amount is " + Convert.ToString(hfbtcamt.Value);
            btnsave.Visible = false;
            btnconfirm.Visible = true;
            txtamount.ReadOnly = true;
        }
        catch (Exception EX)
        {
            lblMsg.Text = EX.Message;
        }
    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (string.IsNullOrEmpty(txtamount.Text.Trim()))
        {
            lblMsg.Text = "Enter Amount Coin !!";
            lblMsg.ForeColor = Color.Red;
            txtamount.Focus();
            return;
        }
        if (!IsMRCeric(txtamount.Text.Trim()))
        {
            lblMsg.Text = "Enter Correct  Quanity !";
            lblMsg.ForeColor = Color.Red;
            txtamount.Focus();
            return;
        }
        //double min = 0.0001, bytecoinwallet = 0;
        int qnty = 0;
        qnty = Convert.ToInt32(txtamount.Text.Trim());
        if (qnty < 1)
        {
            lblMsg.Text = "Please Enter Min Coin 1 ";
            txtamount.Focus();
            return;
        }
        result1 = oDataUtility.ExecuteSql("SP_UpgradeAccountBTC " + Convert.ToInt64(Session["MaxReg"]) + "," + Convert.ToDouble(hfbtcamt.Value) + "," + qnty + "," + Convert.ToDouble(hfusdprice.Value) + "");
        if (result1 > 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Congratulations , You are  Sucessfully Purchase Coin";
            lblMsg.ForeColor = Color.Green;
            btnconfirm.Enabled = false;
        }
        else
        {
            lblMsg.Text = "Please Retry / Insufficient  Fund  ";
            lblMsg.ForeColor = Color.Red;
            return;
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}