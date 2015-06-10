<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallWebMethod.aspx.cs" Inherits="WebApplication.AngularJS.CallWebMethod" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
</head>

<body ng-app="myapp">

  <div ng-controller="MyController" >
    <button ng-click="myData.doClick(item, $event)">Send AJAX Request</button>
    <br/>
    Data from server: {{myData.fromServer}}
  </div>

  <script>
      angular.module("myapp", [])
          .controller("MyController", function ($scope, $http) {
              $scope.myData = {};
              $scope.myData.doClick = function (item, event) {

                  $http.post('CallWebMethod.aspx/GetEmployees', { data: "{data:'" + JSON.stringify("xxxx").replace(/'/g, "\\'\\'") + "'}" })
                    .success(function (data, status, headers, config) {
                        $scope.myData.fromServer = data.d;
                    })
                    .error(function (data, status, headers, config) {
                        $scope.status = status;
                    });

              }


          }).config(function ($httpProvider) {

              $httpProvider.defaults.headers.post = {};

              $httpProvider.defaults.headers.post["Content-Type"] = "application/json; charset=utf-8";

          });
  </script>

</body>

</html>