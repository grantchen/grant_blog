class Blog < ActiveRecord::Base
  belongs_to :blog_template
  belongs_to :blog_tab
  accepts_nested_attributes_for :blog_template
  accepts_nested_attributes_for :blog_tab
  default_scope order('created_at DESC')
end
