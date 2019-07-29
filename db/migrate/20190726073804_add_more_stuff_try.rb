class AddMoreStuffTry < ActiveRecord::Migration[5.2]
  def change

    add_column :people, :contract_to, :date
  end
end
