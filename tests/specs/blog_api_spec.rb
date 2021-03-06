require_relative '../../BlogApp/blog_api'
require 'rspec'
require 'rack/test'
require 'minitest/autorun'

describe 'The Great Blog Application' do
  include Rack::Test::Methods

  pixalator_post = '{"id":"1","author":"Pixelator","title":"My first post",'\
  '"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
  'Sed ornare sapien et mauris euismod, quis aliquet ante laoreet..",'\
  '"tags":["cooking","sports"]}'
  pixelated_posts = '[{"id":"2","author":"Pixelated",'\
  '"title":"Your second post","description":"Morbi est sem, lacinia sit amet'\
  ' justo quis, maximus ullamcorper elit. Praesent in dolor nec sem rhoncus '\
  'tincidunt nec egestas est.","tags":["fitness","recreation"]},{"id":"3",'\
  '"author":"Pixelated","title":"Your third post","description":"Praesent in'\
  ' dolor nec sem rhoncus tincidunt nec egestas est.","tags":["fitness"]}]'
  pixalator_posts = '[{"id":"1","author":"Pixelator","title":"My first post",'\
  '"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
  'Sed ornare sapien et mauris euismod, quis aliquet ante laoreet..",'\
  '"tags":["cooking","sports"]}]'

  fitness_posts = '[{"id":"2","author":"Pixelated","title":"Your second post",'\
  '"description":"Morbi est sem, lacinia sit amet justo quis, maximus '\
  'ullamcorper elit. Praesent in dolor nec sem rhoncus tincidunt nec egestas '\
  'est.","tags":["fitness","recreation"]},{"id":"3","author":"Pixelated",'\
  '"title":"Your third post","description":"Praesent in dolor nec sem rhoncus '\
  'tincidunt nec egestas est.","tags":["fitness"]}]'
  sports_posts = '[{"id":"1","author":"Pixelator","title":"My first post",'\
  '"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
  'Sed ornare sapien et mauris euismod, quis aliquet ante laoreet..",'\
  '"tags":["cooking","sports"]}]'

  def app
    Sinatra::Application
  end

  it 'Works..' do
    get '/api/post'
    last_response.status.must_equal 200
  end

  it 'Can find a post by id' do
    get '/api/post/1'
    last_response.body.must_equal pixalator_post
  end

  it "Doesn't crash when it can't find a post by id" do
    get '/api/post/-1'
    last_response.status.must_equal 200
  end

  it 'Can find posts by author' do
    get '/api/post?author=Pixelated'
    last_response.body.must_equal pixelated_posts

    get '/api/post?author=Pixelator'
    last_response.body.must_equal pixalator_posts
  end

  it 'Can find posts by Tag' do
    get '/api/post?tag=fitness'
    last_response.body.must_equal fitness_posts

    get '/api/post?tag=sports'
    last_response.body.must_equal sports_posts
  end

  it 'Has an endpoint for tags' do
    get '/api/tag'
    last_response.status.must_equal 200
  end

  it 'gets tags and their frequency' do
    get '/api/tag'
    response = last_response.body
    response.must_equal '{"cooking":1,"sports":1,"fitness":2,"recreation":1}'
  end
end
