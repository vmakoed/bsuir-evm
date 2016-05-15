'use strict'

angular.module 'bsuir-ecm'
  .controller 'ProjectsCtrl', ($scope) ->

    setPagination = ($scope, list) ->
      $scope.listLength = list.length
      $scope.curPage = 0
      $scope.pageSize = 3
      
      $scope.numberOfPages = () ->
        Math.ceil($scope.listLength / $scope.pageSize)

      $scope.range = (n) ->
        new Array(n)

    $scope.posts = [
      {
        "title": "Интеллектуальные вычислительные комплексы, системы и компьютерные сети",
        "author": "Канаш Владислав Николаевич",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 1",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 2",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 3",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 4",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 5",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 6",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
      {
        "title": "Гульня калгасау begins! 7",
        "author": "Влад Канаш",
        "course": 3,
        "group": 350501
      },
    ]

    setPagination($scope, $scope.posts)

angular.module 'bsuir-ecm'
.filter 'pagination', ->
  (input, start) ->
    start = +start
    input.slice(start)
