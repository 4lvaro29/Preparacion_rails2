class RemoveProductFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :product, foreign_key: true
  end
end
