class CreateTrydbs < ActiveRecord::Migration[5.2]
  def change
    create_table :trydbs do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
