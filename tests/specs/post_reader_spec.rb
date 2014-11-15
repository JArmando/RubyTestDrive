require_relative '../../BlogApp/Helpers/post_reader'
require_relative '../../BlogApp/Models/post'
require 'rspec'
require 'rack/test'
require 'minitest/autorun'

describe 'Post Reader' do
	include Rack::Test::Methods

	it "works..." do
		PostReader.new().get_posts_from_file('..\..\posts.json')[0].must_be_instance_of Post
	end

end