
<%@ include file="AdminHeader.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Destinations</title>
<script>
	var dest1 = ${destlist};
	var dest2 = ${packlist};
	var dest3 = ${supplist};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.destlist = dest1;//dest
				$scope.packlist = dest2;//package
				$scope.supplist = dest3;//supplier
				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}
			});
</script>
<div class="container"  ng-app="repeatSample" ng-controller="repeatController">
	<c:if test="${!checkk}">

		<div class="container" ng-app="repeatSample">

			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<sf:form role="form" action="insertdest" commandName="dest"
						method="post" modelAttribute="dest" enctype="multipart/form-data">
						<h2>
							<br> <br>Add new Destinations..
						</h2>
						<hr class="colorgraph">
						<div class="row">


							<div class="form-group col-xs-12">

								<sf:input type="file" path="pimage"
									class="form-control input-lg" placeholder="file" tabindex="1"
									title="minimum length for image is 1" />

							</div>
							<div class="form-group col-xs-12">
								<sf:input path="destname" class="form-control input-lg"
									placeholder="destination name" tabindex="1" pattern=".{1,15}"
									required="true"
									title="Destination name should be between 1 to 15"></sf:input>
							</div>
							<div class="form-group col-xs-12">
								<sf:input path="destdesc" class="form-control input-lg"
									placeholder="description" tabindex="1" pattern=".{1,50}"
									required="true"
									title="Destination desc should be between 1 to 50"></sf:input>
							</div>

							<div class="form-group col-xs-6">
								<sf:label path="packagename">Package Name</sf:label>
								<sf:select path="packagename" class="form-control input-sm"
									ng-controller="repeatController">
									<option ng-repeat="destination in packlist"
										value="{{destination.packagename}}">{{destination.packagename}}</option>
								</sf:select>
							</div>
							

							<div class="form-group col-xs-6">
								<sf:label path="suppliername">Supplier Name</sf:label>
								<sf:select path="suppliername"  class="form-control input-sm"
									ng-controller="repeatController">
								<option ng-repeat="destination in supplist"
										value="{{destination.suppliername}}">{{destination.suppliername}}</option>
								</sf:select>
							</div>
						

							<div class="col-xs-12">
								<input type="submit" value="Add destination"
									class="btn btn-primary btn-block btn-lg" tabindex="7">
							</div>
						</div>
					</sf:form>
				</div>
			</div>
		</div>

	</c:if>
<div class="container">
	<c:if test="${checkk}">

		<div class="container" ng-app="repeatSample">

			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<sf:form role="form" action="plzNowUpdateddest" commandName="dest"
						method="post">
						<h2>
							<br> <br>Update Destinations..
						</h2>
						<hr class="colorgraph">
			
							<div class="row">
								<div class="col-xs-12">
									
										<sf:input type="file" path="pimage"
											class="form-control input-lg" placeholder="file" tabindex="1"
											title="minimum length for image is 1" />
									</div>

<div class="col-xs-12">
									<sf:input path="destid" class="form-control input-lg"
										placeholder="destid" tabindex="1" pattern=".{1,15}"
										required="true"
										title="Destination id should be between 1 to 15"></sf:input>
								</div>
<div class="col-xs-12">
								<sf:input path="destname" class="form-control input-lg"
									placeholder="destname" tabindex="1" pattern=".{1,15}"
									required="true"
									title="Destination name should be between 1 to 15"></sf:input>
							</div>
							<div class="form-group col-xs-12">
								<sf:input path="destdesc" class="form-control input-lg"
									placeholder="description" tabindex="1" pattern=".{1,50}"
									required="true"
									title="Destination desc should be between 1 to 50"></sf:input>
							</div>

							<div class="form-group col-xs-6">
								<sf:label path="packagename">Package Name</sf:label>
								<sf:select path="packagename" class="form-control input-sm"
									ng-controller="repeatController">
									<option ng-repeat="destination in packlist"
										value="{{destination.packagename}}">{{destination.packagename}}</option>
								</sf:select>
							</div>

							<div class="form-group col-xs-6">
								<sf:label path="suppliername">Supplier Name</sf:label>
								<sf:select path="suppliername" class="form-control input-sm"
									ng-controller="repeatController">
									<option ng-repeat="destination in supplist"
										value="{{destination.suppliername}}">{{destination.suppliername}}</option>
								</sf:select>
							</div>



							<div class="col-xs-12">
								<input type="submit" value="Update Dest"
									class="btn btn-primary btn-block btn-lg" tabindex="7">
							</div>
						</div>

					</sf:form>
				</div>
			</div>
		</div>
	</c:if>
</div>



	<table class="table table-responsive">
<br>

		<thead>
			<tr>
				<th>Id</th>
				<th>Dest Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Package name</th>
				<th>Supplier name</th>
				<th>Image</th>
				
			</tr>
		</thead>
		<tr ng-repeat="destination in destlist|filter:searchText">
			<td>{{destination.destid}}</td>
			<td>{{destination.destname}}</td>
			<td>{{destination.destdesc}}</td>
			<td>{{destination.price}}</td>
			<td>{{destination.packagename}}</td>
			<td>{{destination.suppliername}}</td>
			<td><img src="resources/images/{{destination.destid}}.jpg" width="60px" height="50px"></td>
			<td><a href="Deletedest?pid={{destination.destid}}">Delete</a></td>
			<td><a href="plzUpdateddest?pid={{destination.destid}}">Update</a></td>
	
		</tr>
	</table>
</div>









<%@ include file="footer.jsp"%>