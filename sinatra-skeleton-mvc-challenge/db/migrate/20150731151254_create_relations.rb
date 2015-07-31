class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|

    t.integer :stalker_id
    t.integer :victim_id
    end
  end
end
