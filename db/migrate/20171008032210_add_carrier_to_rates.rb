class AddCarrierToRates < ActiveRecord::Migration[5.1]
  def change
    add_column :rates, :carrier_num, :integer
  end
end
