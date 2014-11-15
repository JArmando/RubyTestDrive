require_relative './Helpers/post_reader'

require 'sinatra'

get '/post' do
	posts = PostReader.new().get_posts_from_file '/posts.json'
	"Hello World"
end