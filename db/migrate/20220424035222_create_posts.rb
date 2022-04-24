class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.datetime :start_at
      t.datetime :finish_at
      t.boolean :all
      t.text :memo

      t.timestamps
    end
  end
end
