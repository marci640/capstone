class ChangeDataTypeForState < ActiveRecord::Migration[5.1]
  def change
    change_column :states, :code, :string
  end
end
