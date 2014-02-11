class CreateBlogCats < ActiveRecord::Migration
  def change
    create_table :blog_cats do |t|
      t.string :title
      t.string :cat_type
      t.integer :sort

      t.timestamps
    end
  end
end
