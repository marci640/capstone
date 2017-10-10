class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :abbrev
      t.integer :code

      t.timestamps
    end
  end
end
