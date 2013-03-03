class Post < ActiveRecord::Base
  attr_accessible :category_id, :content, :image, :title

  belongs_to :category
  belongs_to :user
end
