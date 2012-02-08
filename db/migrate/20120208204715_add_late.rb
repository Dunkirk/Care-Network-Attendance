class AddLate < ActiveRecord::Migration
  def self.up
		Status.create :designation => "Late"
  end

  def self.down
  end
end
