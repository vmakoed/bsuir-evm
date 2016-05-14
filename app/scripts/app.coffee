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
      .when '/projects',
        templateUrl: 'views/projects/project-list.html'
        controller: 'ProjectsCtrl'
      .when '/projects/:projectId',
        templateUrl: 'views/projects/project.slim'
        controller: 'ProjectsController'
      .otherwise
        redirectTo: '/'
