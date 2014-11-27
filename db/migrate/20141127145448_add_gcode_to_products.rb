class AddGcodeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :gcode, :string
  end
end
