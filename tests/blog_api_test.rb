require_relative '../BlogApp/blog_api'
require 'sinatra'
require 'test/unit'
require 'rack/test'

class TestBlogApi < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def test_endpoint_exists
		get '/post'
		assert last_response.ok?
	end
end