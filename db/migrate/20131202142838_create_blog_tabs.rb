class CreateBlogTabs < ActiveRecord::Migration
  def change
    create_table :blog_tabs do |t|
      t.string :title
      t.string :type
      t.integer :sort

      t.timestamps
    end
  end
end
