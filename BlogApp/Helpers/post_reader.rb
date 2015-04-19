require_relative '../Models/post'
require 'json'

# this class is an utility to get posts by reading a .json from the file system
class PostReader
  def get_posts_from_file(filename)
    posts = JSON.parse(File.read(filename))['posts']
    posts.map do |p|
      post = Post.new(p['author'], p['title'], p['description'])
      post.id = p['id']
      post.title = p['title']
      post.tags = p['tags'].gsub(/\s+/, '').split(',')
      post
    end
  end
end
