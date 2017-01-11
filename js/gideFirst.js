var app = angular.module('myApp', ['ng', 'ngRoute']);

app.config(function ($routeProvider) {
  console.log(333);
  $routeProvider
    .when('/goodChoice', {
      templateUrl: 'tpl/goodChoice.html',
    })

    .when('/phone', {
      templateUrl: 'tpl/phone.html',
    })


    .when('/ear', {
      templateUrl: "tpl/ear.html",
      controller: 'earCtrl',
    })
    .when('/earDetail', {
      templateUrl: "tpl/earDetail.html",
    })


    .when('/bell', {
      templateUrl: 'tpl/bell.html',
    })
    .when('/bellDetail', {
      templateUrl: 'tpl/bellDetail.html',
    })


    .when('/motion', {
      templateUrl: 'tpl/motion.html',
    })


    .when('/round', {
      templateUrl: 'tpl/round.html',

    })

    .when('/service', {
      templateUrl: 'tpl/service.html',
    })

    .when('/goodChoice', {
      templateUrl: 'tpl/goodChoice.html',
    })

    .when('/allItems', {
      templateUrl: 'tpl/allItems.html',
    })


    .otherwise({redirectTo: '/goodChoice'})

});


//设置一个父级控制器，便于页面的跳转

app.controller('parentCtrl', ['$scope', '$location', function ($scope, $location) {
  $scope.jump = function (arg) {
    $location.path(arg);
  }
}]);


//========ear的控制器========
app.controller('earCtrl', ['$scope', '$http', function ($scope, $http) {

  $http.get('data/earCategory.php').success(function(data) {

    var earlist = [];

    for (var i = 0; i < data.length; i++) {
      earlist[i] = {};
      earlist[i].eid = data[i].eId;
      earlist[i].Info = data[i].eInfo;
      earlist[i].ename = data[i].eName;
      earlist[i].eprice = data[i].ePrice;

      getColorNum(earlist[i].eid,earlist[i]);
    }
    function getColorNum(ID,list) {//得到每种耳机的颜色以及数量
      $http.get(`data/earColorType.php?id=${ID}`).success(function(dataCol_Num) {
        list.eCT=[];
        for(var j=0;j<dataCol_Num.length;j++){
          list.eCT[j]={};
          list.eCT[j].ec=dataCol_Num[j].eType_Color;
          list.eCT[j].enum=dataCol_Num[j].eNum;
          list.eCT[j].epic_L=dataCol_Num[j].ePic_L_1;
        }
      });
    }
    $scope.earList=earlist;
    console.log(earlist);
})

}]);


