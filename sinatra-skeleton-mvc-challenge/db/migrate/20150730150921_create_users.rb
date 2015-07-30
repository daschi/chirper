class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :email
      t.string    :firstname
      t.string    :lastname
      t.string    :handle
      t.string    :image_link
      t.string    :password_hash

      t.timestamps
    end
  end
end
