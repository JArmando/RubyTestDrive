class Post
	def initialize(author, title, description)
		@author = author
		@description = description
	end

	attr_reader :author
	attr_accessor :tags, :title, :description, :id

	def to_hash
		{
      'id' => @id,
      'author' => @author,
      'title' => @title,
      'description' => @description,
      'tags' => @tags
    }
	end

end