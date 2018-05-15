<%@ Page Language="C#" MasterPageFile="~/UserPanel/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="UserPanel_Member_Default" %>

	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
     <script src="../../International/media/js/jquery.dataTables.js"></script>
      <script language="javascript" type="text/javascript">
          jQuery.fn.dataTableExt.oSort['string-case-asc'] = function (x, y) {
              return ((x < y) ? -1 : ((x > y) ? 1 : 0));
          };

          jQuery.fn.dataTableExt.oSort['string-case-desc'] = function (x, y) {
              return ((x < y) ? 1 : ((x > y) ? -1 : 0));
          };

          $(document).ready(function () {
              hscroll = "useMinHeight";
              $('#tblDataTables').dataTable({
                  "bJQueryUI": true,
                  "bProcessing": false,
                  "sPaginationType": "full_numbers",
                  "aaSorting": [[0, 'asc']],
                  "aoColumnDefs": [
                          { "sType": 'string-case', "aTargets": [4] }
                  ],
                  "aoColumns": [

                                  null,
                                   null,
                                   null,
                                    null,
                                   null,
                  ]
              });
          });


    </script>

          <script type="text/javascript">
             
              function copyToClipboard(element) {
                  //  alert('hi');
                  var $temp = $("<input>");
                  $("body").append($temp);
                  $temp.val($(element).text()).select();
                  document.execCommand("copy");
                  $temp.remove();
              }
    </script>
	<style>
		.r4_counter .stats
		{
			margin-left:75px;
		}
		.r4_counter .fa
		{
			font-size:28px;
		}
	</style>
            <div class="wrapper main-wrapper row" style=''>

                <div class='col-xs-12'>
                    <div class="page-title">

                        <div class="pull-left">
                            <!-- PAGE HEADING TAG - START -->
                            <h1 class="title">Dashboard</h1>
                            <!-- PAGE HEADING TAG - END -->
                        </div>

                    </div>
                </div>
                <div class="col-lg-12">
                    <section class="box nobox marginBottom0">
                        <div class="content-body">
                            <div class="row">
								<div class="col-md-4 col-sm-5 col-xs-12">
									<div class="display-block" style="color: #2a2a2a;">Earn by referring new members</div>
									<div class="display-block">
										<a href="/referral" class="x-link">Learn more &gt;</a>
									</div> 
								</div>
                                <div class="col-md-8 col-sm-12 col-xs-12">									
									<div class="input-group">
									<asp:HyperLink runat="server" id="hypernk233" cssclass="form-control" readonly="false" type="text"></asp:HyperLink>
									<%-- <asp:HyperLink ID="hypernk233" runat="server" Style="color: #fff; font-size: 14px; background-color: #2a2a2a; padding: 7px;"></asp:HyperLink>--%>
                                        	<span class="input-group-btn">
										        <input id="btncopyLink" type="button" name="copylink" onclick="copyToClipboard('#ctl00_ContentPlaceHolder1_hypernk233')" value="Copy Link" class="btn btn-danger has-gradient-to-right-bottom" style="margin-left: 0%; margin-bottom: 0%;" />
                                            <%--	<button class="btn btn-danger has-gradient-to-right-bottom" type="button" data-clipboard="" data-clipboard-target="#affiliateLink">Copy</button>--%>
										</span>
									</div>									
								</div>
							</div>
						</div>
					</section>
				</div>
								
								
				<div class="col-lg-12">
                    <section class="box nobox marginBottom0">
                        <div class="content-body">
                            <div class="row">
                                <div class="col-lg-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                        <div class="icon-after cc BTC-alt"></div>
                                        <i class='pull-left cc BTC-alt icon-md icon-white mt-10'></i>
                                        <div class="stats">
                                            <h3 class="color-white mb-5"><asp:Label ID="lbltopupwallet" runat="server"></asp:Label></h3>
                                            <span>Wallet BTC balance</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                        <div class="icon-after fa fa-connectdevelop"></div>
                                        <!--<i class='pull-left fa fa-adjust icon-md icon-white mt-10 '></i>-->
										<i class=" pull-left fa fa-connectdevelop icon-md icon-white mt-10" aria-hidden="true"></i>
                                        <div class="stats">
                                            <h3 class="mb-5 color-white"><asp:Label ID="lblcoinavailable" runat="server"></asp:Label></h3>
                                            <span>Total Available Fabis Tokens</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                        <div class="icon-after  fa fa-adjust"></div>
                                        <i class='pull-left fa fa-adjust icon-md icon-white mt-10'></i>
                                        <div class="stats">
                                            <h3 class="mb-5 color-white"><asp:Label ID="lblwalletcoin" runat="server"></asp:Label></h3>
                                            <span>Fabis Tokens Balance</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End .row -->
                        </div>
                    </section>
                </div>

                <div class="clearfix"></div>
                <!-- MAIN CONTENT AREA STARTS -->

                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                <div class="col-lg-8">   
					<section class="box has-border-left-3">
					
						<header class="panel_header">
                            <h2 class="title pull-left">BUY TOKENS NOW</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
					<div id="panelBuyToken" class="panel x-panel">						
						<div class="panel-body">
							<div class="display-block x-tip hidden">
								<ul class="list-unstyled">
									<li>
										1. Go to your wallet to deposit BTC or ETH
									</li>
									<li>
										2. Buy Fabis token
									</li>
									<li>
										3. Check your Fabis balance
									</li>
								</ul>
							</div>
							<div class="x-line hidden"></div>
						<div class="display-block mt-15">
									<form action="/Home/BuyToken" class="form-horizontal">
									<div class="row">
										<div class="form-group mb-5">
											<label class="col-md-3 col-sm-4 col-xs-4 text-right control-label x-link">Use</label>
											<div class="col-md-9 col-sm-8 col-xs-8">
												<div class="display-block">
													<div class="display-inline-block">
														<a href="javascript:;" onclick="SelectCrypto(1)" class="choose-btc media-left active">
															<i class="icon icon-btc"></i>
															<span class="chooseBTCETH">BTC</span>
														</a>
													</div>
												</div>
											</div>
										</div>
										</div>
										<div class="row">
										<div class="form-group mb-5">
											<label class="col-md-3 col-sm-4 col-xs-4  text-right control-label x-link">Available Balance</label>
											<div class="col-md-7  col-sm-6 col-xs-5">
												<div class="form-control-static"><span class="text-bold"><span id="cryptoBalance"><asp:Label ID="lblbtcbalance" runat="server"></asp:Label></span> <span id="cname">BTC</span></span><br>
													<%--(<span id="balUsd">0.00</span> USD)--%>
												</div>
											</div>
											<div class="col-md-2 col-sm-2 col-xs-3" style="display:none;">
												<div class="form-control-static">
													<a href="javascript:BuyAll()" class="x-link"> Buy All</a>
												</div>
											</div>
										</div>
										</div>
                                      
										<div class="row">
										<div class="form-group mb-5">
											<label class="col-md-3 col-sm-4 col-xs-4  text-right control-label x-link">Fabis Buy</label>
											<div class="col-md-9 col-sm-8 col-xs-8">
												<asp:TextBox runat="server" autocomplete="new-password" class="form-control  form-control-lg text-bold" data-val="true" data-val-number="The field TokenBuy must be a number." data-val-range="Minimum 50 Fabiss" data-val-range-max="1000000000" data-val-range-min="50" data-val-regex="Minimum 50 Fabiss" data-val-regex-pattern="([0-9]+)" data-val-required="Please input Fabis amount" id="txtamount" name="TokenBuy" onblur="FabisAmountChanged(this)" placeholder="" value="" type="text"></asp:TextBox>
												<span class="field-validation-valid text-danger" data-valmsg-for="TokenBuy" data-valmsg-replace="true" style="display:block"></span>
											</div>
										</div>
										</div>
										<div class="row">
										<div class="form-group mb-5">
											<label class="col-md-3 col-sm-4 col-xs-4  text-right control-label x-link">Price/Fabis</label>
											<div class="col-md-9 col-sm-8 col-xs-8">
												<div class="form-control-static text-bold">$<span id="topFabis"><asp:Label ID="lblcoinrate" runat="server"></asp:Label></span>
												</div>
											</div>
										</div>
										</div>
										<div class="form-control-static text-bold"><asp:Label style="margin-left: 60px;" ID="lblMsg" runat="server"></asp:Label></span>
										
                                        	<div class="row">
										<div class="form-group mb-5">
										
											<div class="col-md-9 col-sm-8 col-xs-8">
												<div class="form-control-static text-bold">
                                                    <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                                            <ProgressTemplate>
                                              
                                                <img src="../../International/images/progress.gif" style="height:40px; width:40px;" />
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
												</div>
											</div>
										</div>
										</div>
                                       
											
										<div class="row">
										<div class="form-group mb-5">
											<label class="col-md-3 col-sm-4 col-xs-4  text-right control-label x-link">&nbsp;</label>
											<div class="col-md-9 col-sm-8 col-xs-8">
												<div class="row">
													<div class="col-md-6 col-xs-12 mb-10">
                                                         <asp:Label ID="lblpackage" runat="server" ForeColor="Blue"></asp:Label>
                                                         <asp:HiddenField ID="hfusdprice" runat="server" Value="0" />
                                                         <asp:HiddenField ID="hfbtcamt" runat="server" Value="0" />
															<asp:Button ID="btnsave" OnClick="btnsave_Click" runat="server" cssclass="btn btn-lg btn-block btn-danger" Text="Buy Now"></asp:Button>	
													        <asp:Button ID="btncancel" OnClick="btncancel_Click" runat="server" cssclass="btn btn-lg btn-block btn-danger" Text="Refresh"></asp:Button>	
													 &nbsp;

                                                            <asp:Button ID="btnconfirm" OnClick="btnconfirm_Click" runat="server" cssclass="btn btn-lg btn-block btn-danger" Visible="false" Text="Confirm"></asp:Button>	
													
                                                    
                                                    </div>
												</div>
											</div>
										</div>
										</div>
									</form>        
								</div>
							</div>
						</div>
					</section>
				</div>   
			
                      </ContentTemplate>
                    </asp:UpdatePanel>

                <div class="col-lg-4">
                    <section class="box ">
                        <header class="panel_header">
                            <h2 class="title pull-left">Live crypto prices</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
                        <div class="content-body">
                            <div class="row">
                                <div class="col-xs-12 mt-5">
                                    <script>
                                        baseUrl = "https://widgets.cryptocompare.com/";
                                        var scripts = document.getElementsByTagName("script");
                                        var embedder = scripts[scripts.length - 1];
                                        (function () {
                                            var appName = encodeURIComponent(window.location.hostname);
                                            if (appName == "") {
                                                appName = "local";
                                            }
                                            var s = document.createElement("script");
                                            s.type = "text/javascript";
                                            s.async = true;
                                            var theUrl = baseUrl + 'serve/v1/coin/multi?fsyms=BTC,ETH,XMR,LTC,XRP,NEO,DASH&tsyms=USD,EUR,CNY,GBP';
                                            s.src = theUrl + (theUrl.indexOf("?") >= 0 ? "&" : "?") + "app=" + appName;
                                            embedder.parentNode.appendChild(s);
                                        })();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="clearfix"></div>
				
				<div class="col-lg-6 col-sm-6 col-xs-12" hidden>
					<div class="r4_counter db_box has-gradient-to-right-bottom">
						<div class="icon-after">
							<img src="assets/images/Fabis-ico-lg.png" alt="">
						</div>
						<i class="pull-left ico-icon icon-md icon-primary mt-10">
							<img src="assets/images/Fabis-ico-so.png" class="ico-icon-o" alt="">
							<img src="assets/images/Fabis-ico-sw.png" class="ico-icon-w" alt="">
						</i>
						<div class="stats">
							<h3 class="mb-5 extra-bold color-white"><asp:Label ID="lblcoinprice" runat="server"></asp:Label></h3>
							<span>PRICE BEGINS </span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6 col-xs-12" hidden>
					<div class="r4_counter db_box timer has-gradient-to-right-bottom">
						<div class="icon-after">
							<img src="assets/images/Fabis-ico-lg.png" alt="">
						</div>
						<i class="pull-left ico-icon icon-md icon-primary mt-10">
							<img src="assets/images/Fabis-ico-so.png" class="ico-icon-o" alt="">
							<img src="assets/images/Fabis-ico-sw.png" class="ico-icon-w" alt="">
						</i>
						<div class="stats">
							<h3 class="mb-5 extra-bold color-white">Token Sale Ends In:</h3>
							<div class="banner-countdown">
								<div class="countdown-right">
								<div class="countdown-block">
									<div class="countdown-block-main"><h4 id="countdown-days color-white">18</h4></div>
									<span>Days</span>
								</div>								
								<div class="countdown-sep">:</div>
								
								<div class="countdown-block"><div class="countdown-block-main"><h4 id="countdown-hours color-white">13</h4></div><span>Hours</span></div>
								
								<div class="countdown-sep">:</div>
								
								<div class="countdown-block"><div class="countdown-block-main"><h4 id="countdown-minutes color-white">43</h4></div><span>Minutes</span></div>
								
								<div class="countdown-sep">:</div>
								
								<div class="countdown-block"><div class="countdown-block-main"><h4 id="countdown-seconds color-white">31</h4></div><span>Seconds</span></div><div class="clear"></div>
								</div>
						   </div>
						</div>
					</div>
				</div>			
				
                <div class="clearfix"></div>
				
				
				
				<div class="col-lg-12">
                    <section class="box nobox marginBottom0">
                        <div class="content-body">
                            <div class="row">
                                <div class="col-lg-2 col-sm-6 col-xs-12 col-lg-offset-1">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                       <!-- <div class="icon-after cc BTC-alt"></div>-->
                                      <!--  <i class='pull-left cc BTC-alt icon-md icon-white mt-10'></i>-->
                                        <div class="stats" style="margin-left:0px; text-align:center;">
                                           
                                            <span>1st Phase</span> <br>
											<span>Coin price: $ 0.010 </span> <br>
											<span>Coin for sale: 10000000 </span> <br>
												<span>SALE: RUNNING </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                     <!--   <div class="icon-after cc DASH-alt"></div>
                                        <i class='pull-left cc DASH-alt icon-md icon-white mt-10 '></i>-->
                                         <div class="stats" style="margin-left:0px; text-align:center;">
                                            
                                            <span>2nd Phase</span> <br>
											<span> Coin price: $ 0.015</span> <br>
											<span> Coin for sale: 10000000
</span> <br>
											<span>SALE </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                    <!--    <div class="icon-after cc LTC-alt"></div>
                                        <i class='pull-left cc LTC-alt icon-md icon-white mt-10'></i>-->
<div class="stats" style="margin-left:0px; text-align:center;">
                                           
                                            <span>3rd Phase</span><br>
											<span> Coin price: $ 0.019</span> <br>
											<span> Coin for sale: 10000000</span> <br>
											<span> SALE</span>
                                        </div>
                                    </div>
                                </div>
								     <div class="col-lg-2 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                       
                                 
                                       <div class="stats" style="margin-left:0px; text-align:center;">
                                           
                                            <span>4th Phase</span><br>
											<span> Coin price: $ 0.024</span><br>
											<span> Coin for sale: 10000000</span><br>
											<span> SALE</span>
                                        </div>
                                    </div>
                                </div>
								     <div class="col-lg-2 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box has-gradient-to-right-bottom">
                                       
                                 
                                      <div class="stats" style="margin-left:0px; text-align:center;">
                                           
                                            <span>5th Phase</span><br>
											<span> Coin price: $ 0.037</span><br>
												<span>Coin for sale: 10000000 </span><br>
													<span> SALE</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End .row -->
                        </div>
                    </section>
                </div>

              
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				

                <div class="col-lg-4" style="display:none;">
                    <section class="box has-border-left-3">
                        <header class="panel_header">
                            <h2 class="title pull-left">Transfer Coins</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
                        <div class="content-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="transfer-wraper">
                                        <div class="form-group no-mb">
                                            <label class="form-label">Amount</label>
                                            <span class="desc">minimum value "0.001 BTC"</span>

                                            <div class="input-group mb-10">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="enter amount">
                                                <div class="input-group-btn">
                                                    <button type="button" class="btn btn-red dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                                            BTC <span class="caret"></span>
                                                    </button>

                                                    <ul class="dropdown-menu dropdown-red no-spacing">
                                                        <li><a href="#">LTC</a></li>
                                                        <li><a href="#">DASH</a></li>
                                                        <li><a href="#">Ripple</a></li>
                                                    </ul>
                                                </div>

                                            </div>

                                            <label class="form-label">wallet address</label>
                                            <span class="desc"></span>

                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                        <span class="arrow"></span>
                                                <img src="data/icons/wallet-o.png" alt="icon">
                                                </span>
                                                <input type="text" class="form-control" placeholder="OxsD12F32xvW3deG5...">
                                            </div>

                                            <button type="button" class="btn btn-primary btn-lg mt-20 has-gradient-to-right-bottom" style="width:100%"> Transfer Now</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-lg-4" style="display:none;">
                    <section class="box has-border-left-3">
                        <header class="panel_header">
                            <h2 class="title pull-left">Recent Transaction</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
                        <div class="content-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="transaction-wraper">
                                        <div class="transaction-info has-gradient-to-right-bottom">
                                            <img alt="" src="data/profile/profile.jpg" class="img-responsive img-circle">
                                            <strong class="color-white">1.23<span> LTC</span></strong>
                                        </div>
                                        <span class="transaction-opration"><i class="fa fa-arrow-right cancelled"></i></span>
                                        <div class="transaction-info">
                                            <img alt="" src="data/profile/profile-blog.jpg" class="img-responsive img-circle">
                                            <strong><span>OxsD1..</span></strong>
                                        </div>

                                        <hr>

                                        <div class="transaction-info bg-gray">
                                            <img alt="" src="data/profile/profile.jpg" class="img-responsive img-circle">
                                            <strong>0.03<span> BTC</span></strong>
                                        </div>
                                        <span class="transaction-opration"><i class="fa fa-arrow-left complete"></i></span>
                                        <div class="transaction-info">
                                            <img alt="" src="data/profile/profile-crm.jpg" class="img-responsive img-circle">
                                            <strong><span>OxsD1..</span></strong>
                                        </div>

                                        <hr>

                                        <div class="col-xs-12">
                                            <a href="#" class="all-transaction text-center block"><strong><i class="fa fa-plus"></i> View all</strong></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-lg-4" style="display:none;">
                    <section class="box has-border-left-3">
                        <header class="panel_header">
                            <h2 class="title pull-left">Wallet addresses</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
                        <div class="content-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="transfer-wraper">
                                        <div class="form-group no-mb">

                                            <label class="form-label">Bitcoin wallet address</label>
                                            <div class="input-group mb-10">
                                                <span class="input-group-addon has-gradient-to-right-bottom">
                                                        <i class='cc BTC-alt icon-white'></i>   
                                                    </span>
                                                <p class="form-control-static with-border">OxsD12F32xvW3deG5...</p>
                                                <a href="#" class="input-group-addon" data-color-class="primary" data-animate=" animated fadeIn" data-toggle="tooltip" data-original-title="copy" data-placement="top"><i class="fa fa-copy text-dark"></i></a>
                                            </div>

                                            <label class="form-label">Litecoin wallet address</label>
                                            <div class="input-group">
                                                <span class="input-group-addon has-gradient-to-right-bottom">
                                                        <i class='cc LTC-alt icon-white'></i>   
                                                    </span>
                                                <p class="form-control-static with-border">OxsD12F32xvW3deG5...</p>
                                                <a href="#" class="input-group-addon" data-color-class="primary" data-animate=" animated fadeIn" data-toggle="tooltip" data-original-title="copy" data-placement="top"><i class="fa fa-copy text-dark"></i></a>
                                            </div>

                                            <div class="col-sm-6">
                                                <button type="button" class="btn btn-primary btn-lg mt-20 has-gradient-to-right-bottom" style="width:100%">View all</button>
                                            </div>
                                            <div class="col-sm-6">
                                                <button type="button" class="btn btn-primary btn-lg mt-20 has-gradient-to-right-bottom" style="width:100%">Settings</button>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
				
				<div class="col-lg-12">
                    <section class="box" style="border-left: 3px solid #e77512;">
                        <header class="panel_header">
                            <h2 class="title pull-left">YOUR LATEST PURCHASED COIN</h2>
                            <div class="actions panel_actions pull-right">
                                <a class="box_toggle fa fa-chevron-down"></a>
                                <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                                <a class="box_close fa fa-times"></a>
                            </div>
                        </header>
                        <div class="content-body">
                            <div class="row">
                                <div class="col-xs-12">

                                    <div class="table-responsive" data-pattern="priority-columns">
                                           <asp:Repeater ID="StateGrid" runat="server">
                                      <HeaderTemplate>
                                        <table id="tblDataTables" class="table table-small-font no-mb table-bordered table-striped">
                                            <thead class="thead-inverse" style="background-color:#edf1f2;">
                                                <tr>
                                                    <th>S.No.</th>
                                                    <th data-priority="1">UID</th>
                                                    <th data-priority="3">Transaction Type</th> 
                                                    <th data-priority="1">Date</th>
                                                    <th data-priority="1">Coin Purchased</th>
                                                 
												</tr>
                                            </thead>
                                            </HeaderTemplate>
                                          
                                                 <ItemTemplate>
                                                       <tbody>
                                <tr class="input_noborder">
                                    <td style="text-align: center">
                                        <%# Container.ItemIndex+1 %>
                                    </td>
                                  
                                    <td style="text-align: center">
                                        <font color="darkgreen"><%# Eval("loginid")%></font>
                                    </td>
                                    <td style="text-align: center">
                                        <font color="red"> <%# Eval("transtype")%></font>
                                    </td>
                                    <td style="text-align: center">
                                        <%# Eval("transdate","{0:MMM-dd-yyyy}")%>
                                    </td>
                                    <td style="text-align: center">
                                      <span class="status-complete">  <%# Eval("credit")%></span>
                                    </td>
                                
                                </tr>
                                 </tbody>
                                 </ItemTemplate>
                               
                                 <FooterTemplate>
                                  </table>
                               </FooterTemplate>
                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>                
                </div>

                

                

                

                <div class="clearfix"></div>

                <!-- MAIN CONTENT AREA ENDS -->
            </div>
        </asp:Content>