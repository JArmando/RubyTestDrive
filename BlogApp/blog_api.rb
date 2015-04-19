require_relative './Helpers/post_reader'

require 'sinatra'
require 'json'

get '/' do
  send_file 'Public/index.html'
end

get '/api/post' do
  content_type :json
  posts = get_posts
  posts.find_all do |post|
    (
    (!params['author'] || post.author == params['author']) &&
    (!params['tag'] || post.tags.find { |tag| tag == params['tag'] })
    )
      .map(&:to_hash).to_json
  end
end

get '/api/post/:id' do
  content_type :json
  posts = get_posts
  post = posts.find { |x| x.id == params[:id] }
  post.to_hash.to_json if post
end

get '/api/tag' do
  content_type :json
  tags = {}
  fetch_posts.map do |post|
    post.tags.map do |tag|
      (!tags[tag] && tags[tag] = 1) || tags[tag] = tags[tag] + 1
    end
  end
  tags.to_json
end

def fetch_posts
  file = File.file?('..\posts.json') ? '..\posts.json' : '..\..\posts.json'
  reader = PostReader.new
  reader.get_posts_from_file(file)
end
