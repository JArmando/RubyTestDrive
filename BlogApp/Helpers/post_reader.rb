require_relative '../Models/post'
require 'json'

class PostReader

	def get_posts_from_file(filename)
		raw_data = JSON.parse(File.read(filename))
		posts = raw_data['posts'].map {  |p| post = Post.new(p['author'], p['title'],p['description'])
											 									 post.id = p['id']
											 									 post 
									  							} 
	end
end