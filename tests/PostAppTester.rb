require_relative "../BlogApp/Models/post"
require "test/unit"

class TestPostReader < Test::Unit::TestCase
	def testBla
		assert_equal('Pablo', Post.new('Pablo', 'Batida se mato', 'batida, pablo, muerte').Author)
	end

end