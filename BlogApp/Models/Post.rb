class Post
	def initialize(author, content)
		@author = author
		@content = content
	end

	def author
		@author
	end
	def content
		@content
	end
	def tags
		@tags
	end

	def tags=(tags)
		@tags = tags
	end
	


end