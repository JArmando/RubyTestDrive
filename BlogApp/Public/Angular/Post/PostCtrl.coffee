blogApp.controller 'PostController', 
['$scope','PostApi', 'TagApi',
($scope, postApi, tagApi) -> 
  $scope.posts = postApi.query()
  $scope.tags = tagApi.get()
]