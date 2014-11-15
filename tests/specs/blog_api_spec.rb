require_relative '../../BlogApp/blog_api'
require 'rspec'
require 'rack/test'
require 'minitest/autorun'

describe 'The Great Blog Application' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "works..." do
		get '/post'
		expect(last_response).to be_ok
	end


end