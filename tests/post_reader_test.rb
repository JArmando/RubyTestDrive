require_relative '../BlogApp/Helpers/post_reader'
require_relative '../BlogApp/Models/Post'

require 'test/unit'

class PostReaderTest < Test::Unit::TestCase
	def test_post_reader
		assert_instance_of(PostReader, PostReader.new(), "Should be able to create an instance of PostReader")
    assert_instance_of(Post, PostReader.new().get_posts_from_file('..\posts.json')[0], "Should be able to read posts")
  end
end