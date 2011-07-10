class CreateGivenLunches < ActiveRecord::Migration
  def self.up
    create_table :given_lunches do |t|
      t.date :date_of_lunch
      t.decimal :price, :precision => 4, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :given_lunches
  end
end
