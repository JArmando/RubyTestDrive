require_relative '../../BlogApp/Helpers/post_reader'
require_relative '../../BlogApp/Models/post'
require 'rspec'
require 'rack/test'
require 'minitest/autorun'

describe 'Post Reader' do
	include Rack::Test::Methods

	json_post = '{"id":"1","author":"Pixelator","title":"My first post","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare sapien et mauris euismod, quis aliquet ante laoreet..","tags":["cooking","sports"]}'

	it "works..." do
		PostReader.new().get_posts_from_file('..\..\posts.json')[0].must_be_instance_of Post
	end

	it "Should contain a valid post" do
		PostReader.new().get_posts_from_file('..\..\posts.json')[0].to_hash.to_json.must_equal json_post
	end

end