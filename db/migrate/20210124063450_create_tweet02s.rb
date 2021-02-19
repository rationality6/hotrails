class CreateTweet02s < ActiveRecord::Migration[6.1]
  def change
    create_table :tweet02s do |t|
      t.string :body

      t.timestamps
    end
  end
end
