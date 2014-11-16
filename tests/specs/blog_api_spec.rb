require_relative '../../BlogApp/blog_api'
require 'rspec'
require 'rack/test'
require 'minitest/autorun'

describe 'The Great Blog Application' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "Works..." do
		get '/post'
		last_response.status.must_equal 200
	end

	it "Can find a post by id" do
		get '/post/1'
		last_response.body.must_equal '{"id":"1","author":"Pixelator","title":null,"description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare sapien et mauris euismod, quis aliquet ante laoreet..","tags":"cooking, sports"}'
	end

	it "Can find posts by author" do
		get '/post?author=Pixelator'
		last_response.body.must_equal ''
	end

end