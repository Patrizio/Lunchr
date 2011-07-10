class AddEmployeeId < ActiveRecord::Migration
  def self.up
    add_column :employees, :employee_id, :integer
    add_column :employees, :lastname, :string
  end

  def self.down
    remove_column :employees, :employee_id, :integer
    remove_column :employees, :lastname, :string
  end
end
