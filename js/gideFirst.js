
var app=angular.module('myApp',['ng','ngRoute']);

app.config(function($routeProvider){
  console.log(333);
  $routeProvider
    .when('/goodChoice',{
      templateUrl:'tpl/goodChoice.html',
    })

    .when('/phone',{
      templateUrl:'tpl/phone.html',
    })


    .when('/ear',{
      templateUrl:"tpl/ear.html",
    })
    .when('/earDetail',{
      templateUrl:"tpl/earDetail.html",
    })


    .when('/bell',{
      templateUrl:'tpl/bell.html',
    })
    .when('/bellDetail',{
      templateUrl:'tpl/bellDetail.html',
    })


    .when('/motion',{
      templateUrl:'tpl/motion.html',
    })


    .when('/round',{
      templateUrl:'tpl/round.html',

    })

    .when('/service',{
      templateUrl:'tpl/service.html',
    })

    .when('/goodChoice',{
      templateUrl:'tpl/goodChoice.html',
    })

    .when('/allItems',{
      templateUrl:'tpl/allItems.html',
    })


  .otherwise({redirectTo:'/goodChoice'})

});


//设置一个父级控制器，便于页面的跳转

app.controller('parentCtrl',['$scope','$location',function($scope,$location){
  $scope.jump=function(arg){
   $location.path(arg);
  }
}]);

