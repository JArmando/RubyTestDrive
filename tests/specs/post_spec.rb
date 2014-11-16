require_relative "../../BlogApp/Models/post"

require 'rspec'
require 'minitest/autorun'

describe 'BlogApp\'s Post class tests' do
    
    it "Should be able to create a new Post" do
      assert_instance_of(Post, Post.new('Pablo', 'Batida se mato', 'blah blah blah'))
    end
    
    it "Should be able to create a new Post with the given Author name" do
      assert_equal('Pablo', Post.new('Pablo', 'Batida se mato', 'blah blah blah').author)
    end

    it "Should be able to set tags to a post" do
      @test_post = Post.new('Pablo', 'Batida se mato', 'blah blah blah')
      @test_post.tags = ['batida', 'pablo', 'muerte']
      assert_equal(['batida', 'pablo', 'muerte'], @test_post.tags)
    end
    
end