class BlogCat < ActiveRecord::Base
  has_many :blogs
  default_scope order('sort ASC')
end
