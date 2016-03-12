class ChangeDateInRecords < ActiveRecord::Migration
  def up
    change_column :records, :date, :date
  end

  def down
    change_column :records, :date, :datetime
  end
end
