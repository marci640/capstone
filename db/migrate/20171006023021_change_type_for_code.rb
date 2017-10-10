class ChangeTypeForCode < ActiveRecord::Migration[5.1]
  def change
    change_column :rates, :procedure_code, :string
  end
end
