class RemoveColumnsFromRates < ActiveRecord::Migration[5.1]
  change_table :rates do |t|
    t.remove :year
    t.remove :carrier_number
    t.remove :locality
    t.remove :procedure_code
    t.remove :modifier
    t.remove :non_facility_fee
    t.remove :filler
    t.remove :pctc_indicator
    t.remove :status_code
    t.remove :multiple_surgery_indictor
    t.remove :section_1848
    t.remove :section_1834
    t.remove :opps_indicator
    t.remove :opps_non_facility
    t.remove :opps_facility
  end
end
