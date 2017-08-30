class AddPremiumToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :premium, :boolean, deafult: false
  end
end
