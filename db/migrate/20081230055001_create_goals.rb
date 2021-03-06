class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.integer :user_id, :default => 0
      t.string  :message, :limit => 200
      t.integer :number
      t.decimal :current, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
