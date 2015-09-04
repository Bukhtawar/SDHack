<html>
<title>Create Review Samples</title>
<head>
  	<link href="http://i4.sdlcdn.com/css/omssdpts1s73/snap/components/reviews/scss/writeReview.css" rel="stylesheet" type="text/css"/>
	<link href="http://i3.sdlcdn.com/js/omssdpts1s73/snap/writeReviews.new.min.js" rel="stylesheet" type="text/css"/>
	<link href="http://i3.sdlcdn.com/css/omssdpts1s73/snap/common/scss/base.min.css" rel="stylesheet" type="text/css"/>
	<link href="http://i4.sdlcdn.com/js/omssdpts1s73/snap/base.min.js" rel="stylesheet" type="text/css"/>
</head>
<body>
<div width="60%">
<div class="row review-detail">
    <form method="post" id="ajaxPostReview" action="" novalidate="novalidate">
	<div class="sdreviewwrapper box-size-property col-xs-21">
		<div class="error"></div>
		<div class="prinputgroup col-xs-24" id="rating">
			<div class="mandatory-text col-xs-24">All fields are mandatory</div>
			<div class="col-lg-12 col-xs-24 field-wrap">
				<div class="sdlbl col-lg-8 col-xs-12">
					<h3 id="rating_label">Your Rating:</h3>
				</div>
				<div class="sdfieldwrap col-lg-14 col-xs-10">
					<div class="sdfields">
						<div id="rating_Sec" class="charttxt">
							<strong _rateScore="0">
								<i sval="1" class="sd-icon sd-icon-star fa-star "></i>
								<i sval="2" class="sd-icon sd-icon-star fa-star "></i>
								<i sval="3" class="sd-icon sd-icon-star fa-star "></i>
								<i sval="4" class="sd-icon sd-icon-star fa-star "></i>
								<i sval="5" class="sd-icon sd-icon-star fa-star "></i>
							</strong>
							<small class="LTgray rate-txt">
								Rate It!</small>
							<input type="hidden" id="rating_value" name="rating_value" value="">
						</div>
						<div class="break"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-12 col-xs-24 field-wrap">
				<div class="sdlbl col-lg-16 col-xs-12" style="margin-right: 10px;">
					<h3 id="recom" class="">
						<label for="recom">Would you recommend this product?</label>
					</h3>
					<p class="instructions"></p>
				</div>
				<div class="sdfieldwrap col-xs-7">
					<div class="sdfields">
						<span class="radioOpt sdRadio"><input id="recommend_yes" name="recommend" type="radio" value="YES" ><label for="recommend_yes">Yes</label></span>
						<span class="radioOpt sdRadio"><input id="recommend_no" name="recommend" type="radio" value="NO" ><label for="recommend_no">No</label></span>
					</div> </div>
			</div>

			<div class="break"></div>
		</div>

		<div class="prinputgroup" id="headline">
			<div class="center-left-field-review sdlbl col-xs-4">
				<h3 id="headline_label"><label for="headline_value">Title:</label></h3>

				<p class="instructions"></p>
			</div>
			<div class="sdfieldwrap col-xs-19">
				<div class="sdfields">
					<textarea class="review-inputBox auto-max-error js-prof" id="headline_value" type="text" minlength="3" maxlength="100" name="headline_value"></textarea>
					<div id="headline_value_error" class="auto-max-error-display profanity-error" for="headline_value" style="display:none"></div>
					<div class="review_rcomment">(3 - 100 characters)</div>
				</div>
			</div>
			<div class="break"></div>
		</div>

		<div class="prinputgroup" id="experience">
			<div class="center-left-field-review sdlbl col-xs-4">
				<h3 id="experience_label"><label for="experience_value">Review:</label></h3>

				<p class="instructions"></p>
			</div>
			<div class="sdfieldwrap col-xs-19">
				<div class="sdfields">
					<div class="tabsheet" id="product_sheet">
						<textarea id="experience_value" class="review-inputBox auto-max-error js-prof" minlength="40" maxlength="5000" cols="40" rows="5" name="experience_value"></textarea>
						<div id="experience_value_error" class="auto-max-error-display profanity-error" for="experience_value" style="display:none"></div>
						<div class="review_lcomment">If you were not happy with the seller or service do <a href="http://www.snapdeal.com/info/contactus">contact us</a> for quick resolution</div>
						<div class="review_rcomment">(40 - 5000 characters)</div>
					</div>
				</div>
			</div>
			<div class="break"></div>
		</div>
		<div class="break"></div>
		<div class="prinputgroup" id="nickname">
			<div class="center-left-field-review sdlbl col-xs-4">
				<h3 id="nickname_label"><label for="nickname_value">Nickname:</label></h3>
			</div>
			<div class="sdfieldwrap col-xs-19">
				<div class="sdfields">
					<input id="nickname_value" class="review-inputBox auto-max-error js-prof" type="text" maxlength="40" size="40" name="nickname_value" value="avinash ainghal">
					<div id="nickname_value_error" class="auto-max-error-display profanity-error" for="nickname_value" style="display:none"></div>
					<div class="review_rcomment">(Max 40 characters)</div>
					<div class="break"></div>
				</div>
			</div>
			<div class="break"></div>
		</div>
		<div class="col-xs-4"></div>
		<div class="reviewBtnWrap col-xs-19">
			<input class="btn btn-large col-xs-6 rippleGrey" id="sdreviewSubmit" type="submit" name="submit" value="SUBMIT" />
			<input type="reset" id="sdReviewReset" class="btn btn-large btn-default col-xs-6 rippleGrey cancel js-userReviewed" formnovalidate onclick="Snapdeal.writeReview.resetForm()" value="Reset" />
		</div>
		<br>

	</div>
</form>
</div>
</body>
</html>