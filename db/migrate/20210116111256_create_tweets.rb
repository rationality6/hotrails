class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.integer :likes_count, default: 0
      t.integer :retweets_count, default: 0

      t.references :room

      t.timestamps
    end
  end
end
