class AddColumnToRates < ActiveRecord::Migration[5.1]
  def change
    add_column :rates, :procedure_code, :string
  end
end
