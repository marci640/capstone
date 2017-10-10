class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :year
      t.integer :carrier_number
      t.integer :locality
      t.integer :procedure_code
      t.integer :modifier
      t.float :non_facility_fee
      t.float :facility_fee
      t.text :filler
      t.integer :pctc_indicator
      t.string :status_code
      t.integer :multiple_surgery_indictor
      t.float :section_1848
      t.float :section_1834
      t.integer :opps_indicator
      t.float :opps_non_facility
      t.float :opps_facility

      t.timestamps
    end
  end
end
