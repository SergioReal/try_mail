class AddTimeTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :open_time, :datetime
  end
end
