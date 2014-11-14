class Post
	def initialize(author, content)
		@author = author
		@content = content
	end

	attr_reader :author, :content, :tags

	def tags=(tags)
		@tags = tags
	end
	
end