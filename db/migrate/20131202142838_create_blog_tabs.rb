class CreateBlogTabs < ActiveRecord::Migration
  def change
    create_table :blog_tabs do |t|
      t.string :title
      t.string :tab_type
      t.integer :sort

      t.timestamps
    end
  end
end
