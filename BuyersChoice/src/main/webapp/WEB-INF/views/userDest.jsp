<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Destinations</title>
<script>
	var dest = ${destlist};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.destlist = dest;
				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}
			});
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<div class="container" ng-app="repeatSample"	ng-controller="repeatController">
<%@ include file="/WEB-INF/views/header.jsp"%>
<br><br><br>
<img src="resources/images/collage.jpg"  align="center" style="max-height: 400px;" width="800px"height="400px">
	<br><br>
	<div ng-app="repeatSample"	ng-controller="repeatController">

		<table class="table table-responsive">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Desc</th>
					<th>Price</th>
					<th>Package Name</th>
					<th>Supplier Name</th>
					<th>Image</th>
				</tr>
			</thead>
			<tr ng-repeat="desti in destlist">
				<td>{{desti.destid}}</a></td>
				<td>{{desti.destname}}</a></td>
				<td>{{desti.destdesc}}</a></td>
				<td>{{desti.price}}</a></td>
				<td>{{desti.packagename}}</td>
				<td>{{desti.suppliername}}</td>
				<td><img src="resources/images/{{destination.destid}}.jpg" width="60px" height="50px"></td>
			
			</tr>
		</table>
	</div>

</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
</html>