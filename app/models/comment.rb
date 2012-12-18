class Comment < ActiveRecord::Base
	blongs_to  :post
  attr_accessible :content, :post_id
end
