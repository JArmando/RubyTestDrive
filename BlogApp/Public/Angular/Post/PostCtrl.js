// Generated by CoffeeScript 1.8.0
blogApp.controller('PostController', [
  '$scope', 'PostApi', function($scope, postApi) {
    return $scope.posts = postApi.query();
  }
]);