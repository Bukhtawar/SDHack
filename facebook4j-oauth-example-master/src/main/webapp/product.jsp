<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="css/product.css" rel="stylesheet" type="text/css" />
<link href="css/base.min.css" rel="stylesheet" type="text/css" />
<link href="css/igFollow.css" rel="stylesheet" type="text/css" />
<link href="css/loginIframe.css" rel="stylesheet" type="text/css" />
<link href="css/pdp.min.css" rel="stylesheet" type="text/css" />
<link href="css/reglobe_widget.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
	<img src="https://www.icinga.org/wp-content/uploads/2014/06/logo_snapdeal.png" width="215" height="70"/>
</div>
	<div class="login">
		<tag:notloggedin>
			<a href="signin">Sign in with Facebook</a>
		</tag:notloggedin>
		<tag:loggedin>
		  Welcome <b>${facebook.name}</b>
			</br>
			<a href="./logout">logout</a>
		</tag:loggedin>
	</div>
	<div style="float:left;margin-right:60px;margin-left: 30px">
	<img src="${product.image}" width="300"/>
</div>

<div id="reviews">
	<h1>${product.name}</h1>
	
	
	<div class="product_review" style="float:left">

	<ul itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
		<!--  Summary Histogram Starts -->
        <li class="first col-xs-8 leftAlignment">
                <div class="progressbar fill-Circle chart" data-animate="false">
                    <div class="circle picart" data-percent="90.0">
                        <div class="charttxt">
                            <span itemprop="ratingValue">4.5</span>
                            <small class="LTgray">OUT OF 5</small>
                        </div>
                    </div>
                </div>
                <div class="text">
                        <h5>Based on <span itemprop="ratingCount">39</span> ratings</h5>
                        <div class="row reviews-true">
                                	<span id="ratings-wrapper" class="js-pdp-nav-sec" data-link-nav="#defRevPDP" onclick="Snapdeal.pdpReview.displayReviewsWithRatingFilter(this,5,&#39;HELPFUL&#39;);" title="Read 7 reviews for 5-star ratings">
	                                    <span class="lfloat">5 Star</span>
	                                	<span class="barover review-bar" style="width:60.00000000000001%"></span>
	                                    <span>29</span>
                                    </span>
                                </div>
                            <div class="row reviews-true">
                                	<span id="ratings-wrapper" class="js-pdp-nav-sec" data-link-nav="#defRevPDP" onclick="Snapdeal.pdpReview.displayReviewsWithRatingFilter(this,4,&#39;HELPFUL&#39;);" title="Read 1 reviews for 4-star ratings">
	                                    <span class="lfloat">4 Star</span>
	                                	<span class="barover review-bar" style="width:10.344827586206897%"></span>
	                                    <span>5</span>
                                    </span>
                                </div>
                            <div class="row" style="cursor:default">
                                    <span class="lfloat">3 Star</span>
                                <span class="barover" style="width:6.206896551724139%"></span>
                                    <span>3</span>
                                </div>
                            <div class="row" style="cursor:default">
                                    <span class="lfloat">2 Star</span>
                                <span class="barover nobar" style="width:0.0%"></span>
                                    <span>0</span>
                                </div>
                            <div class="row" style="cursor:default">
                                    <span class="lfloat">1 Star</span>
                                <span class="barover" style="width:4.137931034482759%"></span>
                                    <span>2</span>
                                </div>
                            </div>
                </li>
        <!--  Summary Recommendation Starts -->
        <li id="user-reviewRec-content-div" class="second col-xs-8">
            <div class="progressbar fill-Circle chart2" data-animate="false">
                <div class="picart circle" data-percent="90">
                    <div class="charttxt">
                        <span class="unitDigit">90<sup>%</sup></span>
                        <small class="LTgray">Recommend</small>
                    </div>
                </div>
            </div>
            <div class="text aligncenter">
                <p id="rcmnd-text" class="LTgray fs14">
                    
                            Based on 20 recommendations.
                        <span class="LTblack"> Would you recommend this item?</span>
                </p>
                <a id="recBtn" class="btn btn-blue btn-line rippleWhite" onclick="Snapdeal.pdpReview.recommendProduct(this, &#39;634212839248&#39;,&#39;YES&#39;);">YES</a>
                <a id="notRecBtn" class="btn btn-blue btn-line rippleWhite" onclick="Snapdeal.pdpReview.recommendProduct(this, &#39;634212839248&#39;,&#39;NO&#39;);">NO</a>
            </div>
        </li>
        <!--  Summary Rate/Review Starts -->
        
    </ul>
    <div class="clear"></div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div style="  line-height: 38px;background: #fafafa;padding: 3px 40px 0 40px;width: 850;margin-top: 30px;">
		<span style="font-size: 14px;margin-left:-4px;color: #ababab !important;">Displaying Reviews 1-8 of 8</span>
		<li style="float: right;padding-left: 30px;font-size: 14px;color: #ababab !important;"><a onclick="Snapdeal.pdpReview.fetchHelpfulReviews(this, &#39;0&#39;);">Most Helpful</a></li>
		<li style="float: right;margin-left: 30px;font-size: 14px;  border-bottom: 2px solid #fb8903;color: #fb8903;" class="active"><a onclick="Snapdeal.pdpReview.fetchHelpfulReviews(this, &#39;0&#39;);">Friends</a>
        <li style="float: right;padding-left: 30px;font-size: 14px;color: #ababab !important;">Sort by:</li>
        
	</div>
	<!-- <div id="review">
		sadfasdf
	</div> -->
</div>
</div>
</body>


</html>



