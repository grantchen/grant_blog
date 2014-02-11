class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :view_count, limit:8, default: 0
      t.integer :comment_count, limit:8, default: 0
      t.references :blog_template, index: true
      t.references :blog_cat, index:true

      t.timestamps
    end
  end
end
