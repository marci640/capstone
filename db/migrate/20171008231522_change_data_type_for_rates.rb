class ChangeDataTypeForRates < ActiveRecord::Migration[5.1]
  def change
    change_column :rates, :carrier_num, :string
  end
end
