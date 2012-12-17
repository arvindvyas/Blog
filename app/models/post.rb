class Post < ActiveRecord::Base
  attr_accessible :article, :comments, :image, :title
end
