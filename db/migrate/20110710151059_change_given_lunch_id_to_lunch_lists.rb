class ChangeGivenLunchIdToLunchLists < ActiveRecord::Migration
  def self.up
    rename_column :lunch_lists, :given_lunches_id, :give_lunch_id
  end

  def self.down
    rename_column :lunch_lists, :given_lunch_id, :give_lunches_id
  end
end
