<html>
<title>Create Review Samples</title>
<head>
<link
	href="http://i4.sdlcdn.com/css/omssdpts1s73/snap/components/reviews/scss/writeReview.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://i3.sdlcdn.com/js/omssdpts1s73/snap/writeReviews.new.min.js"
	rel="stylesheet" type="text/css" />
<link
	href="http://i3.sdlcdn.com/css/omssdpts1s73/snap/common/scss/base.min.css"
	rel="stylesheet" type="text/css" />
<link href="http://i4.sdlcdn.com/js/omssdpts1s73/snap/base.min.js"
	rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	var rateScore = 0;
	jQuery(document).ready(function() {
		jQuery('.sd-icon-star').on('mouseover', function() {
		  var count = $(this).attr('sval');
		  jQuery('.sd-icon-star').each(function() {
			  if ($(this).attr('sval') <= count) {
				  $(this).addClass('active');
			  }
		  });
		});
		jQuery('.sd-icon-star').on('mouseout', function() {
		  var count = $(this).attr('sval');
		  jQuery('.sd-icon-star').each(function() {
			  if ($(this).attr('sval') > rateScore) {
				  $(this).removeClass('active');  
			  }
		  });
		});
		jQuery('.sd-icon-star').on('click', function() {
			rateScore = $(this).attr('sval');
			jQuery('.sd-icon-star').each(function() {
				  if ($(this).attr('sval') <= rateScore) {
					  $(this).addClass('active');
				  }
			  });
		});
	});
</script>
</head>
<body style="background: #ececec">
	<div style="background: white;">
		<img
			src="https://www.icinga.org/wp-content/uploads/2014/06/logo_snapdeal.png"
			width="215" height="70" style="margin-left: 30px"/>
	</div>
	<div class="row backLink" style="margin-left: 30px">
		<i class="sd-icon sd-icon-previous"></i> <a
			href="https://www.snapdeal.com/product/onida-mo20gjp11b-20l-2030-ltr/1859643272" >Back
			to Product</a>
	</div>
	<div class="section-head" style="margin-left: 30px">
		<h2>Tell others about this product - write a review</h2>
	</div>
	
	<!-- Create Review  -->
	<div class="col-xs-17 box-size-property" style="margin-top: 10px;margin-bottom: 30px;margin-left: 30px">
		<div class="comp comp-write-review product-detail">
			<div class="row product-detail">
				<!-- <div class="sdproductimg col-xs-2">
                                                <img alt="product image" src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/Onida-20Ltr-MO20GJP11B-Grill-Microwave-SDL425141900-1-3dc8e.jpg">
                                            </div> -->
				<div class="sdproductdetails col-xs-21">
					<span class="productName" style="display: inline;">Nexus 5 16 GB</span>
				</div>
			</div>
		</div>
		<div class="comp comp-write-review">
			<div>
				<div class="message-alert alert-success review-alert-success"
					style="display: none">
					<div class="alert-icon-wrapper comp-error-icon-blue">
						<span class="error-icon"> <i
							class="sd-icon sd-icon-checkmark"></i>
						</span>
					</div>
					<button class="close" type="button">
						<i class="sd-icon sd-icon-delete-sign"></i>
					</button>
					<div class="alert-text-wrapper">
						<span class="alert-heading">Success! Your Feedback has been
							submitted.</span>
						<p class="alert-text alert-success">!</p>
					</div>
				</div>

				<div class="message-alert alert-error review-alert-error"
					style="display: none">
					<div class="alert-icon-wrapper comp-error-icon-red">
						<span class="error-icon"> <i class="sd-icon sd-icon-error"></i>
						</span>
					</div>
					<button class="close" type="button">
						<i class="sd-icon sd-icon-delete-sign"></i>
					</button>
					<div class="alert-text-wrapper">
						<span class="alert-heading">Error! Your Feedback was not
							submitted.</span>
						<p class="alert-text alert-failure">!</p>
					</div>
				</div>

			</div>
			
			
			<!--Write review form  -->
			<div class="row review-detail">
				<form method="post" id="ajaxPostReview" action="./createreview"
					novalidate="novalidate">
					<div class="sdreviewwrapper box-size-property col-xs-21">
						<div class="error"></div>
						<div class="prinputgroup col-xs-24" id="rating">
							<div class="mandatory-text col-xs-24">All fields are
								mandatory</div>
							<div class="col-lg-12 col-xs-24 field-wrap">
								<div class="sdlbl col-lg-8 col-xs-12">
									<h3 id="rating_label">Your Rating:</h3>
								</div>
								<div class="sdfieldwrap col-lg-14 col-xs-10">
									<div class="sdfields">
										<div id="rating_Sec" class="charttxt">
											<strong _ratescore="0"> <i sval="1"
												class="sd-icon sd-icon-star fa-star " ></i> <i sval="2"
												class="sd-icon sd-icon-star fa-star "></i> <i sval="3"
												class="sd-icon sd-icon-star fa-star "></i> <i sval="4"
												class="sd-icon sd-icon-star fa-star "></i> <i sval="5"
												class="sd-icon sd-icon-star fa-star "></i>
											</strong> <small class="LTgray rate-txt"> Rate It!</small> <input
												type="hidden" id="rating_value" name="rating_value" value="">
										</div>
										<div class="break"></div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-xs-24 field-wrap">
								<div class="sdlbl col-lg-16 col-xs-12"
									style="margin-right: 10px;">
									<h3 id="recom" class="">
										<label for="recom">Would you recommend this product?</label>
									</h3>
									<p class="instructions"></p>
								</div>
								<div class="sdfieldwrap col-xs-7">
									<div class="sdfields">
										<span class="radioOpt sdRadio"><input
											id="recommend_yes" name="recommend" type="radio" value="YES"><label
											for="recommend_yes">Yes</label></span> <span
											class="radioOpt sdRadio"><input id="recommend_no"
											name="recommend" type="radio" value="NO"><label
											for="recommend_no">No</label></span>
									</div>
								</div>
							</div>

							<div class="break"></div>
						</div>

						<div class="prinputgroup" id="headline">
							<div class="center-left-field-review sdlbl col-xs-4">
								<h3 id="headline_label">
									<label for="headline_value">Title:</label>
								</h3>

								<p class="instructions"></p>
							</div>
							<div class="sdfieldwrap col-xs-19">
								<div class="sdfields">
									<textarea class="review-inputBox auto-max-error js-prof"
										id="headline_value" type="text" minlength="3" maxlength="100"
										name="headline_value"></textarea>
									<div id="headline_value_error"
										class="auto-max-error-display profanity-error"
										for="headline_value" style="display: none"></div>
									<div class="review_rcomment">(3 - 100 characters)</div>
								</div>
							</div>
							<div class="break"></div>
						</div>

						<div class="prinputgroup" id="experience">
							<div class="center-left-field-review sdlbl col-xs-4">
								<h3 id="experience_label">
									<label for="experience_value">Review:</label>
								</h3>

								<p class="instructions"></p>
							</div>
							<div class="sdfieldwrap col-xs-19">
								<div class="sdfields">
									<div class="tabsheet" id="product_sheet">
										<textarea id="experience_value"
											class="review-inputBox auto-max-error js-prof" minlength="40"
											maxlength="5000" cols="40" rows="5" name="experience_value"></textarea>
										<div id="experience_value_error"
											class="auto-max-error-display profanity-error"
											for="experience_value" style="display: none"></div>
										<div class="review_lcomment">
											If you were not happy with the seller or service do <a
												href="https://www.snapdeal.com/info/contactus">contact
												us</a> for quick resolution
										</div>
										<div class="review_rcomment">(40 - 5000 characters)</div>
									</div>
								</div>
							</div>
							<div class="break"></div>
						</div>
						<div class="break"></div>
						<div class="prinputgroup" id="nickname">
							<div class="center-left-field-review sdlbl col-xs-4">
								<h3 id="nickname_label">
									<label for="nickname_value">Nickname:</label>
								</h3>
							</div>
							<div class="sdfieldwrap col-xs-19">
								<div class="sdfields">
									<input id="nickname_value"
										class="review-inputBox auto-max-error js-prof" type="text"
										maxlength="40" size="40" name="nickname_value" value="viru">
									<div id="nickname_value_error"
										class="auto-max-error-display profanity-error"
										for="nickname_value" style="display: none"></div>
									<div class="review_rcomment">(Max 40 characters)</div>
									<div class="break"></div>
								</div>
							</div>
							<div class="break"></div>
						</div>
						<div class="col-xs-4"></div>
						<div class="reviewBtnWrap col-xs-19">
							<input class="btn btn-large col-xs-6 rippleGrey"
								id="sdreviewSubmit" type="submit" name="submit" value="SUBMIT">
							<input type="reset" id="sdReviewReset"
								class="btn btn-large btn-default col-xs-6 rippleGrey cancel js-userReviewed"
								formnovalidate="" onclick="Snapdeal.writeReview.resetForm()"
								value="Reset">
						</div>
						<br>

					</div>
				</form>

				<div class="sdreviewsharewrapper" style="display: none">
					<div class="thanksmsg">
						<h1>Congratulations!</h1>
						<p class="medsmall medlarge">You have earned 20 points for
							your review. Earn more by sharing it with friends.</p>
					</div>
					<div class="review-submit">
						<a id="sdreviewShare" href="javascript:void(0);"
							onclick="validatetop(&#39;submitReview1&#39;); return false;"
							class="button"> <span>SHARE YOUR REVIEW</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
    
    
    
    
    
    
<!--FOOTER  -->
	<div id="sdFooter" class="footer" style="margin-top: 30px">
		<div class="footer-upper-content">
			<div class="footer-inner-content">
				<div class="footer-lftcont lfloat">
					<div class="footerApps-heading">Download Apps</div>
					<div class="downloadlinks">
						<a
							class="footerAppsLink googleplay fApps-background footer-background"
							href="https://play.google.com/store/apps/details?id=com.snapdeal.main&referrer=utm_source%3Dwebsitefooter%26utm_medium%3Dbadge%26utm_term%3DandroidDownload"
							rel="nofollow"></a> <a
							class="footerAppsLink apple fApps-background footer-background"
							href="https://itunes.apple.com/in/app/snapdeal-mobile-shopping/id721124909?mt=8"
							rel="nofollow"></a> <a
							class="footerAppsLink windows fApps-background footer-background"
							href="http://www.windowsphone.com/en-in/store/app/snapdeal/ee17fccf-40d0-4a59-80a3-04da47a5553f?signin=true"
							rel="nofollow"></a>
					</div>

					<div class="clear"></div>
					<div class="securePayText">
						<span>100%</span> Secure Payments
					</div>
					<div class="card-heading">All major credit &amp; debit cards
						accepted</div>
					<div class="clear"></div>
					<div class="footerTrustpay ">
						<a href="https://www.snapdeal.com/info/TrustPay"> <i
							class="icon-footerTrustPay footer-background"></i> <span>100%
								Moneyback Guarantee &amp; <br> 7 Days Return Policy
								&gt;&gt;
						</span>
						</a>
					</div>
				</div>
				<div class="footer-rhtcont rfloat">
					<div class="footer-TermsLinks lfloat">
						<div class="footer-heading">Company</div>
						<ul class="footer-links">
							<li><a href="http://www.snapdeal.com/page/core-values">Core
									Values</a></li>
							<li><a href="http://www.snapdeal.com/info/press/">Press</a></li>
							<li><a
								href="https://careers.snapdeal.com/careersection/ex/jobsearch.ftl?lang=en&portal=101430233">Careers</a></li>
							<li><a href="http://blog.snapdeal.com/">Blog</a></li>
							<li><a href="http://www.snapdeal.com/info/sitemap">Sitemap</a></li>
							<li><a href="https://www.freecharge.in/?utm_source=Snapdeal">Freecharge</a></li>
							<li><a
								href="http://www.snapdeal.com/offers/financial-services">RupeePower</a></li>
						</ul>
					</div>
					<div class="footer-TermsLinks lfloat">
						<div class="footer-heading">Need Help?</div>
						<ul class="footer-links">
							<li><a href="http://www.snapdeal.com/info/faq">FAQ</a></li>
							<li><a href="http://www.snapdeal.com/help">Contact Us</a></li>
						</ul>
					</div>
					<div class="footer-TermsLinks lfloat">
						<div class="footer-heading">Policy Info</div>
						<ul class="footer-links">
							<li><a href="http://www.snapdeal.com/page/terms">Privacy
									Policy</a></li>
							<li><a href="http://www.snapdeal.com/info/termsOfUse">Terms
									of Use</a></li>
							<li><a href="http://www.snapdeal.com/info/termsOfSale">Terms
									of Sale</a></li>
							<li><a href="http://www.snapdeal.com/info/copyrightPolicy">Copyright
									Policy</a></li>
							<li><a href="http://www.snapdeal.com/p/tvc-terms">T&amp;C
									Adv./Media Communication</a></li>
							<li><a href="http://www.snapdeal.com/page/csr">CSR
									Policy</a></li>
						</ul>
					</div>
					<div class="footer-TermsLinks lfloat">
						<div class="footer-heading">Snapdeal Business</div>
						<ul class="footer-links">
							<li><a href="http://www.snapdeal.com/eGiftVoucher">Snapdeal
									Gift Voucher</a></li>
							<li><a href="http://sellers.snapdeal.com/">Sell on
									Snapdeal</a></li>
							<li><a href="mailto:mediarelations@snapdeal.com">Media
									Enquiries</a></li>
							<li><a
								href="http://www.snapdeal.com/offers/affiliate-program">Be
									an Affiliate</a></li>
							<li><a href="http://www.snapdeal.com/brands">Brand
									Stores</a></li>
							<li><a href="http://www.snapdeal.com/offers/best-discounts">View
									all Offers</a></li>
							<li><a href="http://www.snapdeal.com/launchpad">Snapdeal
									Launchpad</a></li>
						</ul>
					</div>
					<div class="clear"></div>
					<div>
						<div class="footerShareLinks mar_25_top">
							<div class="footer-heading pad_5_btm">Stay Connected</div>
							<div class="lfloat">
								<div id="fb-root" style="display: none" class=" fb_reset">
									<div
										style="position: absolute; top: -10000px; height: 0px; width: 0px;">
										<div></div>
									</div>
									<div
										style="position: absolute; top: -10000px; height: 0px; width: 0px;">
										<div>
											<iframe name="fb_xdm_frame_https" frameborder="0"
												allowtransparency="true" allowfullscreen="true"
												scrolling="no" id="fb_xdm_frame_https" aria-hidden="true"
												title="Facebook Cross Domain Communication Frame"
												tabindex="-1"
												src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/44OwK74u0Ie.html"
												style="border: none;"></iframe>
										</div>
									</div>
								</div>
								<div class="fb-like fb_iframe_widget"
									data-href="http://www.facebook.com/snapdeal" data-send="false"
									data-width="330" data-show-faces="true" data-font="tahoma"
									data-colorscheme="dark" fb-xfbml-state="rendered"
									fb-iframe-plugin-query="app_id=689277371113314&amp;color_scheme=dark&amp;container_width=330&amp;font=tahoma&amp;href=http%3A%2F%2Fwww.facebook.com%2Fsnapdeal&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=true&amp;width=330">
									<span
										style="vertical-align: bottom; width: 330px; height: 57px;"><iframe
											name="f30bcf3388" width="330px" height="1000px"
											frameborder="0" allowtransparency="true"
											allowfullscreen="true" scrolling="no"
											title="fb:like Facebook Social Plugin"
											src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/like.html"
											style="border: none; visibility: visible; width: 330px; height: 57px;"
											class=""></iframe></span>
								</div>
							</div>
							<div class="lfloat pad_10_left">
								<span class="mar_5_right"><iframe
										id="twitter-widget-i1441357163972324996" scrolling="no"
										frameborder="0" allowtransparency="true"
										class="twitter-follow-button twitter-follow-button-rendered"
										src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/follow_button.e5e892aa8b44a208190cd018a89499d8.en.html"
										style="position: static; visibility: visible; width: 122px; height: 20px;"
										data-screen-name="Snapdeal"></iframe></span>
								<div id="___plusone_0"
									style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 38px; height: 24px; background: transparent;">
									<iframe frameborder="0" hspace="0" marginheight="0"
										marginwidth="0" scrolling="no"
										style="position: static; top: 0px; width: 38px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 24px;"
										tabindex="0" vspace="0" width="100%" id="I0_1441357163910"
										name="I0_1441357163910"
										src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/fastbutton.html"
										data-gapiattached="true" title="+1"></iframe>
								</div>
								<span><a href="http://pinterest.com/Snapdeal/"
									title="Follow Me on Pinterest" class="followMePin"
									rel="nofollow">Follow Me on Pinterest</a></span>
								<div class="lfloat clear pad_10_top igAlign">
									<span class="ig-follow" data-id="f3ceaf8b07" data-count="true"
										data-size="small" data-username="true"></span>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="mar_25_top payment-method ">
							<span class="footer-heading">Payment Method</span> <i
								class="icon-payMthds mar_10_left footer-background"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="footer-below-content">
			<div class="footerCategoryLinks">

				<ul class="footerCategoriesUl">

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/mobiles"> Mobiles:
						</a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/samsung/mobiles-mobile-phones">
									Samsung Mobiles </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/micromax/mobiles-mobile-phones">Micromax
									Mobiles </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/nokia/mobiles-mobile-phones">Nokia
									Mobiles </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/lg/mobiles-mobile-phones">
									LG Mobiles</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/karbonn/mobiles-mobile-phones">Karbonn
									Mobiles </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/mobiles-tablets">Tablets
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/apple/mobiles-tablets">
									Apple iPad</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/samsung/mobiles-tablets">Samsung
									Tablets </a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/computers">
								Computers: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/dell/computers-laptops">
									Dell Laptops </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/hp/computers-laptops">HP
									Laptops </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/acer/computers-laptops">Acer
									Laptops </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/lenovo/computers-laptops">
									Lenovo Laptops</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/apple/computers-laptops">Apple
									Macbooks </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/computers-desktops">Desktops
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/computers-external-hard-drives">
									External Hard Disks</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/computers-pen-drives">Pen
									Drives</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/cameras"> Cameras:
						</a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/cameras-digital-slrs">
									DSLR </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/canon/cameras-digital-slrs">Canon
									DSLR </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/nikon/cameras-digital-slrs">Nikon
									DSLR </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/canon/cameras-lenses">
									Canon Lenses</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/nikon/cameras-lenses">Nikon
									Lenses </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/sony/cameras">Sony
									Cameras </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/canon/cameras">Canon
									Cameras </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/nikon/cameras"> Nikon
									Cameras</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/electronic"> Home
								Entertainment: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/electronic-tv-accessories/filters/Type~LED">
									LED TV </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/samsung/electronic-tv-accessories">Samsung
									TV </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/sony/electronic-tv-accessories">Sony
									TV</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/lg/electronic-tv-accessories">
									LG TV</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/electronics-video-players/filters/Type_s~Blu-Ray-Players">Blu-Ray
									Players </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/electronics-home-theatre">Home
									Theater </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/electronics-mp3-media-players">MP3
									Players</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/apple/electronics-mp3-media-players">Apple
									iPod</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/appliances">
								Appliances: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-air-conditioners">
									Air Conditioner</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-refrigerator">Refrigerator
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-washing-machines-dryers">Washing
									Machines </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-personal-care-appliances/filters/Type_s~Trimmers">
									Trimmer</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-vacuum-cleaners">Vacuum
									Cleaner</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-microwave-ovens-otgs">Microwave
									Oven </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-water-purifiers-ro">
									Water Purifier</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/appliances-fans-air-coolers">Fans
									&amp; Air Coolers</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/fashion"> Fashion:
						</a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/women-apparel">
									Women's Clothing</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/men-apparel">Men's
									Apparel </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/mens-footwear">Men's
									Shoes</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/bags"> Bags</a><span
								class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/lifestyle-watches">Watches
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/jewellery-precious">Jewellery
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/jewelry-coins-bars">
									Gold Coins</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/perfumes-beauty">Perfumes</a><span
								class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/home-kitchen"> Home
								&amp; Kitchen: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/brand/tupperware/home-kitchen">
									Tupperware</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-flasks-tiffins">Lunch
									Boxes </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-home-cleaning/filters/Type~Mop">Mop
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-wall-decor/filters/Type~Posters">
									Posters</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-home-decor">Home
									Decor </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-wall-decor/filters/Type~Paintings-Abstract">Paintings
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-clocks">Clocks
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/furniture-bedroom/filters/Type_s~Wardrobes">
									Wardrobes</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/furniture"> Home
								&amp; Furniture: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-furnishing">
									Home Furnishing</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-curtains-blinds">Curtains
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-bath-linen/filters/Type_s~Bath%20Towels">Towels
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/home-kitchen-cushions">
									Cushions</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/furniture-living-room/filters/Type_s~Sofas">Sofas
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/furniture-bedroom/filters/Type_s~Double%20Beds">Beds
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/furniture-tables/filters/Type_s~Office%20Table">Office
									Furniture </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/kitchen-bathroom-fittings-sanitaryware/filters/Type_s~Wash%20Basins%20Counter%20Tops">
									Wash Basin</a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/e-learning">
								e-Learning: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-online-test">
									Online Tests</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-certification-courses">Certification
									Courses </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-courses">Online
									Courses </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-cds-dvds">
									Educational Devices</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-diploma-courses">Degree
									and Diploma Courses </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning-school-education">School
									Education Courses </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/e-learning/filters/Type_s~Competitive%20Exam">Competitive
									Exam </a><span class="slash">/</span></li>
						</ul></li>

					<li class="footerCategoryLi"><span class="footerCategory">
							<a href="http://www.snapdeal.com/products/sports-hobbies">
								Health &amp; Sports: </a>
					</span>
						<ul class="footerSubCategoriesUl">
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/health-diabetes-care">Diabetic
									Care </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/sports-hobbies-cricket">
									Cricket </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/sports-hobbies-football">Football
							</a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/sports-hobbies-table-tennis">Table
									Tennis </a><span class="slash">/</span></li>
							<li class="footerSubCategory"><a
								href="http://www.snapdeal.com/products/sports-hobbies-fitness-equipment">
									Fitness Equipment</a><span class="slash">/</span></li>
						</ul></li>
				</ul>

			</div>
			<div class="footer-text">Snapdeal's vision is to create India's
				most impactful digital commerce ecosystem that creates life-changing
				experiences for buyers and sellers. In February 2010, Kunal Bahl
				along with Rohit Bansal, started Snapdeal.com - India's largest
				online marketplace, with the widest assortment of 12 million+
				products across 500+ diverse categories from thousands of regional,
				national, and international brands and retailers.With millions of
				users and 150,000 sellers, Snapdeal is the shopping destination for
				internet users across the country, delivering to 5000+ cities and
				towns in India. With its acquisition of Freecharge in 2015, a
				leading mobile transactions platform, Snapdeal has become the
				largest m-Commerce company in the country. In its journey till now,
				Snapdeal has partnered with several global marquee investors and
				individuals such as SoftBank, BlackRock, Temasek, eBay Inc., Premji
				Invest, Intel Capital, Bessemer Venture Partners, Mr. Ratan Tata,
				among others.</div>
			<div class="footerCopyText">
				<div class="footer-logo footer-background"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/jquery.111All.min.js"></script>
	<script type="text/javascript"
		src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/base.min.js"></script>
	<script type="text/javascript"
		src="./Onida 20 litre MO20GJP11B Grill Microwave Oven Reviews & Ratings Online – Write Customer Review of Onida 20 litre MO20GJP11B Grill Microwave Oven on Snapdeal_files/writeReviews.new.min.js"></script>
	<input type="hidden" name="pageName" id="pageName" value="">
</body>
</html>