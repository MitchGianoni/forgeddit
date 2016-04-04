class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer, :user_id
      t.string, :label
      t.string :url

      t.timestamps null: false
    end
  end
end
