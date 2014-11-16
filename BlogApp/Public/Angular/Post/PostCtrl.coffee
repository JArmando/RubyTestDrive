blogApp.controller 'PostController', 
['$scope','PostApi' 
($scope, postApi) -> 
  $scope.posts = postApi.query()

]