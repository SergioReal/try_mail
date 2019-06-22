class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|

      t.string :name
      t.string :city
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
