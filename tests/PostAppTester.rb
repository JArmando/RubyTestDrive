require_relative "../BlogApp/Models/post"
require "test/unit"

class TestPostReader < Test::Unit::TestCase
	def testPostClass
		@testPost = Post.new('Pablo', 'Batida se mato')

		assert_instance_of(Post, @testPost, "Should be able to create a new Post")
		
		assert_equal('Pablo', @testPost.author, "Should be able to create a new Post with the given Author name")
		
		@testPost.tags = 'batida, pablo, muerte'
		assert_equal('batida, pablo, muerte', @testPost.tags, "Should be able to set tags to a post")

	end

	def testPostController
		assert_instance_of(PostController, PostController.instance, "PostController should contain an instance of itself")
	end

end