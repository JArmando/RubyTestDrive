blogApp.factory 'PostApi',[
  '$resource', ($resource) ->
    $resource '/api/post/:id'
]

blogApp.factory 'TagApi',[
  '$resource', ($resource) ->
    $resource '/api/tag'
]