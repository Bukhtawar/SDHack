var mainapp = angular.module('mainapp',[]);

mainapp.config(function($httpProvider) {
  $httpProvider.defaults.useXDomain = true;
  delete $httpProvider.defaults.headers.common['X-Requested-With'];
});

mainapp.controller('createReviewController', function($scope, $http){

	$scope.review = {};
  var richDataElements =[];
	var req ={},

	req ={
			method: 'GET',
			url: '',
			params: {
				objectType: 0,
				userId: 234
			}
	};

  $scope.fetchData= function(){
    richDataElements=[];
    req.url = 'http://54.172.79.57:8080/reviews-api/product/'+$scope.product+'/form'
    $http(req).success(function(response){
      var data = response.masterData.richData.richDataElements
      $scope.richDE = response.masterData.richData.richDataElements
      for (item in $scope.richDE){
        richDataElements.push(item);
      }
      console.log(richDataElements);

    }).error(function(err){

    });
  }

	$scope.createReview = function(){

    for (var j=0; j<richDataElements.length; j++){

      var elements = document.getElementById(richDataElements[j]).getElementsByTagName('input');
      $scope.richDE[richDataElements[j]].selection=[];
      if($scope.richDE[richDataElements[j]].dataType=='SINGLESELECT')
        $scope.richDE[richDataElements[j]].selection={};
      for (var i=0; i<elements.length; i++){
        if(elements[i].checked){
          if ($scope.richDE[richDataElements[j]].dataType=='SINGLESELECT'){
            $scope.richDE[richDataElements[j]].selection.name=elements[i].getAttribute('name');
            $scope.richDE[richDataElements[j]].selection.value=elements[i].getAttribute('value');
          }else{
            $scope.richDE[richDataElements[j]].selection.push({
              name: elements[i].getAttribute('name'),
              value: elements[i].getAttribute('name')
            });
          }
        }
      }
    }
    console.log($scope.richDE);
		req = {
			method: 'POST',
			url: 'http://54.172.79.57:8080/reviews-api/reviews',
			headers: {
			'Content-Type': 'application/json'
			},
			data: {
						 "userId": "123",
						 "userSourceId": 0,
						 "objectId": "1001",
						 "objectOwnerId": 0,
						 "objectType": 0,
						 "headline": $scope.headline,
						 "comments": $scope.comments,
						 "nickName": $scope.nickname,
						 "selection": {
						     "richDataElements":$scope.richDE,
						     "name": "richData",
						     "dataType": "RICHDATASET"
						 },
						 "rating": 5,
						 "recommended": $scope.recommendation,
						 "certifiedBuyer": true
						}
		};
		$http(req).success(function(response){
			alert("Review Created");
		}).error(function(error){
			alert(error.text);
		});
	}

});
