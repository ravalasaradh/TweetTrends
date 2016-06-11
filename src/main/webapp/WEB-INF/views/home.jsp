<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html ng-app="SearchTweet">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="<c:url value="/resources/js/angular.js" />"></script>
<script src="<c:url value="/resources/js/trendController.js" />"></script>
<title>Home</title>
</head>
<body ng-controller="searchTweetCtrl" style="background-color: #E6E6FA">
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand" href="/edu">Home </a> <a class="navbar-brand"
					ng-click="getTwitterTrends()" href="#">Get Trends</a> <a
					class="navbar-brand" ng-click="getSearchTweetBox()" href="#">Search
					Tweets</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="contactus"><span
						class="glyphicon glyphicon-edit"></span>Contact Us</a></li>
			</ul>
		</nav>
	</div>
	<div class="container" ng-show="showTweet">
		<div class="row">
			<div class="col-sm-4">
				Search Tweet: <input type="text" placeholder="Enter Tweet"
					ng-model="inputString" />
			</div>
			<div class="col-sm-4">
				<input class="btn btn-info" type="button" value="Search"
					ng-click="search()">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<b>Filter Tweet:</b> <input type="text" ng-model="filterTweet" />
			</div>
			</b>
			<div class="col-sm-4">
				<b>Sort Tweet:</b><select ng-model="sortTweet">
					<option value="createdAt">Date</option>
					<option value="user.name">User Name</option>
					<option value="retweetCount">Tweet Count</option>
				</select>
			</div>
		</div>
		</b>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>User Name</th>
						<th>User Location</th>
						<th>User Pic</th>
						<th>Date</th>
						<th>Id</th>
						<th>Tweet</th>
						<th>Retweet Count</th>
					</tr>
				</thead>
				<tbody>
					<tr
						ng-repeat="tweet in tweets | filter:filterTweet | orderBy:sortTweet ">
						<td>{{tweet.user.name}}</td>
						<td>{{tweet.user.location}}</td>
						<td><img ng-src="{{tweet.user.profileImageUrl}}"
							alt="Description" /></td>
						<td>{{tweet.createdAt}}</td>
						<td>{{tweet.id}}</td>
						<td>{{tweet.text}}</td>
						<td>{{tweet.retweetCount}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div ng-show="showTrendsDiv" class="container">
		Select Location:<select ng-model="trendlist"
			ng-options="trend.name for trend in trends | orderBy:'name'">
		</select> <input type="button" ng-click="gettrendsbylocation()"
			value="Find Trends" />
		<div class="container">
			<div class="row">
				<div class="table-responsive">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>Trend Tag</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="countryTrend in countryTrends">
								<td><a href="{{countryTrend.url}}" target="_blank">{{countryTrend.name}}</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>