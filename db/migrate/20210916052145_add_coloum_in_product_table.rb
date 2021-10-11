class AddColoumInProductTable < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :Product_Description, :string
    
  end
end
