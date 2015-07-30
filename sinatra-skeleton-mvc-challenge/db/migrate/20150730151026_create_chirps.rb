class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string    :content
      t.integer   :user_id

      t.timestamps
  end
end
