class CreateUsefordbs < ActiveRecord::Migration[5.2]
  def change
    create_table :usefordbs do |t|
      t.text :Name
      t.text :City

      t.timestamps
    end
  end
end
