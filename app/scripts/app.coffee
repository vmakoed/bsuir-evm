'use strict'

angular
  .module 'bsuir-ecm', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/news',
        templateUrl: 'views/news/news.html'
        controller: 'NewsCtrl'
      .when '/news/page',
        templateUrl: 'views/news/one_news_page.html'
        controller: 'OneNewsCtrl'
      .otherwise
        redirectTo: '/'
