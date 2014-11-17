require_relative './Helpers/post_reader'

require 'sinatra'
require 'json'

get '/' do
  send_file 'Public/index.html'
end

get '/api/post' do
  content_type :json
  posts = get_posts
  posts.find_all { 
    |post| (
      (!params['author'] || post.author == params['author']) && 
      (!params['tag'] || post.tags.find { |tag| tag == params['tag'] } )
    ) 
    }.map { |post| post.to_hash }.to_json
end

get '/api/post/:id' do
  content_type :json
  posts = get_posts
  post = posts.find { |x| x.id == params[:id] }
  post.to_hash.to_json if post
end

get '/api/tag' do
  content_type :json
  tags = Hash.new
  get_posts.map { 
    |post| post.tags.map {
     |tag| if !tags[tag] then tags[tag] = 1 else tags[tag] = tags[tag] + 1 end 
      }
    }
  tags.to_json
end

def get_posts
  PostReader.new().get_posts_from_file('..\posts.json')
end