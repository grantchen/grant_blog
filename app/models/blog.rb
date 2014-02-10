class Blog < ActiveRecord::Base
  belongs_to :blog_template
  accepts_nested_attributes_for :blog_template
  default_scope order('created_at DESC')
end
