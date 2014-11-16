blogApp.factory 'PostApi',
['$resource', ($resource) ->
  $resource '/api/post', {},
]