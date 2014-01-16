class CreateBlogTemplates < ActiveRecord::Migration
  def change
    create_table :blog_templates do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
