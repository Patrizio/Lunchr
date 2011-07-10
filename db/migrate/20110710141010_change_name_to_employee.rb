class ChangeNameToEmployee < ActiveRecord::Migration
  def self.up
    rename_column :employees, :name, :firstname 
  end

  def self.down
    rename_column :employees, :firstname, :name 
  end
end
