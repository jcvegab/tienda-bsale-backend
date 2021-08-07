class UpdateNameOfTables < ActiveRecord::Migration[6.1]
  def change
    rename_table :categories, :category
    rename_table :products, :product
  end
end
