class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :tweet, foreign_key: true
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
