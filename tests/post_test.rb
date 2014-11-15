require_relative "../BlogApp/Models/post"


require 'test/unit'


class TestPost < Test::Unit::TestCase
	def test_post_class
		@test_post = Post.new('Pablo', 'Batida se mato', 'blah blah blah')
		##### Existance tests
		assert_instance_of(Post, Post.new('Pablo', 'Batida se mato', 'blah blah blah'), "Should be able to create a new Post")
		
		assert_equal('Pablo', @test_post.author, "Should be able to create a new Post with the given Author name")
		
		@test_post.tags = ['batida', 'pablo', 'muerte']
		assert_equal(['batida', 'pablo', 'muerte'], @test_post.tags, "Should be able to set tags to a post")
		#### End of Existance tests

		##### Internal methods tests
		assert_instance_of(Hash, @test_post.to_hash, "A Post should be able to transform themself into hashes")
		assert_equal('Pablo', @test_post.to_hash['author'], "A Post should be parsed to hash correctly")


		#### End of Internal method tests

	end
end