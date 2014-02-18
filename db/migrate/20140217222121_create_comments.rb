class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :email
      t.text :comment
      t.references :blog, index: true

      t.timestamps
    end
  end
end
