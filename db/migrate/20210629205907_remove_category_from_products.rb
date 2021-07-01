class RemoveCategoryFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :category, :string
    add_column :products, :category_id, :integer
  end
end
