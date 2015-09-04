<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:useBean id="dateValue" class="java.util.Date" />


<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="css/product.css" rel="stylesheet" type="text/css" />
<link href="css/base.min.css" rel="stylesheet" type="text/css" />
<link href="css/igFollow.css" rel="stylesheet" type="text/css" />
<link href="css/loginIframe.css" rel="stylesheet" type="text/css" />
<link href="css/pdp.min.css" rel="stylesheet" type="text/css" />
<link href="css/reglobe_widget.css" rel="stylesheet" type="text/css" />
<link
	href="http://i3.sdlcdn.com/js/omssdpts1s73/snap/writeReviews.new.min.js"
	rel="stylesheet" type="text/css" />

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
</head>
<body style="background: #ececec">
	<div style="background: white;">
		<img
			src="https://www.icinga.org/wp-content/uploads/2014/06/logo_snapdeal.png"
			width="215" height="70" />
	</div>
	<div class="login">
		<tag:notloggedin>
			<a href="signin">Sign in with Facebook</a>
		</tag:notloggedin>
		<tag:loggedin>
			<img id="displayPicture" src="${dpUrl}" />
		Welcome <b>${facebook.name}</b>
			<a href="./logout"
				style="position: absolute; right: 160px; top: 44px">Log Out</a>
		</tag:loggedin>
	</div>

	<div style="float: left; width: 30%; padding: 20px; margin-top: 20px">
		<img src="${product.image}" width="356px" />
	</div>

	<div id="reviews"
		style="float: left; width: 68%; background: white; margin-top: 40px; padding: 40px;margin-bottom: 30px">
		<h1>${product.name}</h1>


		<div class="product_review" style="float: left; width:100%">

			<ul itemprop="aggregateRating" itemscope=""
				itemtype="http://schema.org/AggregateRating">
				<!--  Summary Histogram Starts -->
				<li class="first col-xs-8 leftAlignment">
					<div class="progressbar fill-Circle chart" data-animate="false">
						<div class="circle picart" data-percent="90.0">
							<div class="charttxt">
								<span itemprop="ratingValue">4.5</span> <small class="LTgray">OUT
									OF 5</small>
							</div>
						</div>
					</div>
					<div class="text">
						<h5>
							Based on <span itemprop="ratingCount">39</span> ratings
						</h5>
						<div class="row reviews-true">
							<span id="ratings-wrapper" class="js-pdp-nav-sec"
								data-link-nav="#defRevPDP"
								onclick="Snapdeal.pdpReview.displayReviewsWithRatingFilter(this,5,&#39;HELPFUL&#39;);"
								title="Read 7 reviews for 5-star ratings"> <span
								class="lfloat">5 Star</span> <span class="barover review-bar"
								style="width: 60.00000000000001%"></span> <span>29</span>
							</span>
						</div>
						<div class="row reviews-true">
							<span id="ratings-wrapper" class="js-pdp-nav-sec"
								data-link-nav="#defRevPDP"
								onclick="Snapdeal.pdpReview.displayReviewsWithRatingFilter(this,4,&#39;HELPFUL&#39;);"
								title="Read 1 reviews for 4-star ratings"> <span
								class="lfloat">4 Star</span> <span class="barover review-bar"
								style="width: 10.344827586206897%"></span> <span>5</span>
							</span>
						</div>
						<div class="row" style="cursor: default">
							<span class="lfloat">3 Star</span> <span class="barover"
								style="width: 6.206896551724139%"></span> <span>3</span>
						</div>
						<div class="row" style="cursor: default">
							<span class="lfloat">2 Star</span> <span class="barover nobar"
								style="width: 0.0%"></span> <span>0</span>
						</div>
						<div class="row" style="cursor: default">
							<span class="lfloat">1 Star</span> <span class="barover"
								style="width: 4.137931034482759%"></span> <span>2</span>
						</div>
					</div>
				</li>
				<!--  Summary Recommendation Starts -->
				<li id="user-reviewRec-content-div" class="second col-xs-8"
					style="width: 30%">
					<div class="progressbar fill-Circle chart2" data-animate="false">
						<div class="picart circle" data-percent="90">
							<div class="charttxt">
								<span class="unitDigit">90<sup>%</sup></span> <small
									class="LTgray">Recommend</small>
							</div>
						</div>
					</div>
					<div class="text aligncenter">
						<p id="rcmnd-text" class="LTgray fs14">

							Based on 20 recommendations. <span class="LTblack"> Would
								you recommend this item?</span>
						</p>
						<a id="recBtn" class="btn btn-blue btn-line rippleWhite"
							onclick="Snapdeal.pdpReview.recommendProduct(this, &#39;634212839248&#39;,&#39;YES&#39;);">YES</a>
						<a id="notRecBtn" class="btn btn-blue btn-line rippleWhite"
							onclick="Snapdeal.pdpReview.recommendProduct(this, &#39;634212839248&#39;,&#39;NO&#39;);">NO</a>
					</div>
				</li>
				<li id="user-reviewRate-content-div" class="third col-xs-8">

					<div class="text aligncenter" style="margin-top: 108px">
						<p id="rev-text">
							<span>Have you purchased this item?</span>
						</p>

						<a href="writereview?pid=${product.id}"
							class="btn btn-orange  btn-line rippleWhite js-userReviewed">Write
							A Review</a>

					</div>
				</li>
				<!--  Summary Rate/Review Starts -->

			</ul>
			<div class="clear"></div>

















			<div
				style="line-height: 38px; background: #fafafa; padding: 10px;">
				<span
					style="font-size: 14px; margin-left: -4px; color: #ababab !important;">Displaying
					Reviews 1-${rs.size()} of ${rs.size()}</span>
				<li
					style="float: right; padding-left: 30px; font-size: 14px; color: #ababab !important;"><a
					onclick="Snapdeal.pdpReview.fetchHelpfulReviews(this, &#39;0&#39;);">Most
						Helpful</a></li>
				<li
					style="float: right; margin-left: 30px; font-size: 14px; border-bottom: 2px solid #fb8903; color: #fb8903;"
					class="active"><a
					onclick="Snapdeal.pdpReview.fetchHelpfulReviews(this, &#39;0&#39;);">Friends</a>
				<li
					style="float: right; padding-left: 30px; font-size: 14px; color: #ababab !important;">Sort
					by:</li>

			</div>
			<!--start -->
			<div class="commentreview">
				<c:forEach items="${rs}" var="reviewWrapper">

					<jsp:setProperty name="dateValue" property="time"
						value="${reviewWrapper.review.createdAt}" />
					<div id="0141c7ae7040000047cf527731c5776d_reviewDiv"
						class="commentlist">
						<div class="userimg">
							 <!-- <span class="reviewer-imgName" style="background: #63d6d1">Y</span> -->
							 
							<img src="http://graph.facebook.com/v2.4/${reviewWrapper.facebookId}/picture?type=square" class="reviewer-imgName" style="background: #63d6d1" id="fb" fb-id="${reviewWrapper.facebookId}"/> 
							<script>
							
								
							 var html=document.getElementById("fb");
							 var attr=html.getAttribute("fb-id");
							 var hrf="http://graph.facebook.com/v2.4/" + attr + "/picture";
							 html.setAttribute("src", hrf);
							 console.log(hrf);
							 
							 
							 </script>
							<span class="_reviewUserName" title="yakub">${reviewWrapper.review.userReviewsInfo.nickName}</span>
							<small class="LTgray light-font">${reviewWrapper.review.userReviewsInfo.totalNumberOfReviews}
								Reviews</small>
						</div>
						<div class="text">

							<div class="user-review">

								<div class="date LTgray">
									<fmt:formatDate value="${dateValue}" type="both" />
								</div>
								<div class="rating">
									<c:forEach var="i" begin="1" end="${reviewWrapper.review.rating}">
										<i class="sd-icon sd-icon-star active"></i>
									</c:forEach>

								</div>
								<div class="head">${reviewWrapper.review.headline}</div>
								<p>${reviewWrapper.review.comments}</p>
							</div>
							<div class="LTgray grey-div hf-review rw">
								Was this review helpful? <a
									class="middle-grey-button rippleGrey hf-yes yesAnchor"
									onclick="Snapdeal.pdpReview.markReviewHelpful(this, '0141c7ae7040000047cf527731c5776d')">${reviewWrapper.review.recommended}</a>
								<span class="middle-grey-button text hf-num">${reviewWrapper.review.upCount}</span>
							</div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

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



