class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.references :blog_template, index: true

      t.timestamps
    end
  end
end
