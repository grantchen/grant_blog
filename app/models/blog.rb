class Blog < ActiveRecord::Base
  belongs_to :blog_template
  belongs_to :blog_cat
  accepts_nested_attributes_for :blog_template
  accepts_nested_attributes_for :blog_cat
  default_scope order('created_at DESC')
end
