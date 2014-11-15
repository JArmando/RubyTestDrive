require_relative "../BlogApp/Models/post"
require_relative '../BlogApp/Controllers/PostController'

require 'test/unit'
require 'rack/test'

class TestPost < Test::Unit::TestCase
	def test_post_class
		@test_post = Post.new('Pablo', 'Batida se mato')

		assert_instance_of(Post, Post.new('Pablo', 'Batida se mato'), "Should be able to create a new Post")
		
		assert_equal('Pablo', @test_post.author, "Should be able to create a new Post with the given Author name")
		
		@test_post.tags = ['batida', 'pablo', 'muerte']
		assert_equal('batida, pablo, muerte', @test_post.tags, "Should be able to set tags to a post")

	end
end