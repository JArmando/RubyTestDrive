require_relative './Helpers/post_reader'

require 'sinatra'
require 'json'

get '/post' do
	content_type :json
	posts = PostReader.new().get_posts_from_file('..\posts.json')
	posts.map { |post| post.to_hash }.to_json
end

