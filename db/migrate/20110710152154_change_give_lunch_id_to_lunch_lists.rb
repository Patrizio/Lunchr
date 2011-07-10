class ChangeGiveLunchIdToLunchLists < ActiveRecord::Migration
  def self.up
    rename_column :lunch_lists, :give_lunch_id, :given_lunch_id
  end

  def self.down
    rename_column :lunch_lists, :given_lunch_id, :give_lunch_id
  end
end
