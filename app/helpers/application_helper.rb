module ApplicationHelper


    def gravatar_for(user, options={})
      hash = Digest::MD5.hexdigest(user.email)
      size = options[:size]
      image_src = "http://www.gravatar.com/avatar/#{hash}?size=#{size}"
    end

    def posts
    	@posts = Post.all
    end

    def questions
    	@questions = Question.all
    end
end
