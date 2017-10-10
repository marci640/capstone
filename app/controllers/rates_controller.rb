class RatesController < ApplicationController
  
  def new
  end 

  def create
    @average_fees = []

    @state = State.find_by(abbrev: params[:abbrev])
    @carrier_number = @state.code

    # Rates need a better way to capture:
   
    @rates1 = Rate.where(procedure_code: params[:procedure_code_1], carrier_num: @carrier_number)
    @average_fees << @rates1.average(:facility_fee) 
    
    @rates2 = Rate.where(procedure_code: params[:procedure_code_2], carrier_num: @carrier_number)
    @average_fees << @rates2.average(:facility_fee) 

    @rates3 = Rate.where(procedure_code: params[:procedure_code_3], carrier_num: @carrier_number)
    @average_fees << @rates3.average(:facility_fee) 

    @rates4 = Rate.where(procedure_code: params[:procedure_code_4], carrier_num: @carrier_number)
    @average_fees << @rates4.average(:facility_fee) 

    @rates5 = Rate.where(procedure_code: params[:procedure_code_5], carrier_num: @carrier_number)
    @average_fees << @rates5.average(:facility_fee) 

    @rates6 = Rate.where(procedure_code: params[:procedure_code_6], carrier_num: @carrier_number)
    @average_fees << @rates6.average(:facility_fee) 

    @rates7 = Rate.where(procedure_code: params[:procedure_code_7], carrier_num: @carrier_number)
    @average_fees << @rates7.average(:facility_fee) 

    @rates8 = Rate.where(procedure_code: params[:procedure_code_8], carrier_num: @carrier_number)
    @average_fees << @rates8.average(:facility_fee) 
  end 

end
