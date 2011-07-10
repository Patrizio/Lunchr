class CreateLunchLists < ActiveRecord::Migration
  def self.up
    create_table :lunch_lists do |t|
      t.integer :employee_id
      t.integer :given_lunches_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lunch_lists
  end
end
