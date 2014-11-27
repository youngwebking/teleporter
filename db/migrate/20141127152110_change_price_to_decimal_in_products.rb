class ChangePriceToDecimalInProducts < ActiveRecord::Migration
  def change
    remove_column 'products', 'price'
    add_column 'products', 'price', 'decimal', precision: 2
  end
end
