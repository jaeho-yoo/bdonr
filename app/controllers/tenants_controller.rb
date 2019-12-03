class TenantsController < ApplicationController
  
  def new
    @building_id = params[:building_id]
    @room_id = params[:room_id]
  end
  
  def create
    @tenant = Tenant.new
    @tenant.tenant_name = params[:tenant_name]
    @tenant.tenant_phone = params[:tenant_phone]
    @tenant.tenant_gender = params[:tenant_gender]
    @tenant.tenant_period = params[:tenant_period]
    @tenant.tenant_startdate = params[:tenant_startdate]
    @tenant.tenant_enddate = params[:tenant_enddate]
    @tenant.tenant_deposit = params[:tenant_deposit]
    @tenant.tenant_rentfee = params[:tenant_rentfee]
    @tenant.tenant_mtnfee = params[:tenant_mtnfee]
    @tenant.tenant_memo = params[:tenant_memo]
    @tenant.room_id = params[:room_id]
    @tenant.save
    
    @room_id = params[:room_id]
    @building_id = params[:building_id]
    
    redirect_to "/buildings/#{@building_id}/rooms/show/#{@room_id}"
  end
  
  def show
  end

  def edit
    @building_id = params[:building_id]
    @room_id = params[:room_id]
    @tenant = Tenant.find(params[:tenant_id])
  end

  def update
    @building_id = params[:building_id]
    @room_id = params[:room_id]
    
    tenant = Tenant.find(params[:tenant_id])
    tenant.tenant_name = params[:tenant_name]
    tenant.tenant_gender = params[:tenant_gender]
    tenant.tenant_phone = params[:tenant_phone]
    tenant.tenant_period = params[:tenant_period]
    tenant.tenant_startdate = params[:tenant_startdate]
    tenant.tenant_enddate = params[:tenant_enddate]
    tenant.tenant_deposit = params[:tenant_deposit]
    tenant.tenant_rentfee = params[:tenant_rentfee]
    tenant.tenant_mtnfee = params[:tenant_mtnfee]
    tenant.tenant_memo = params[:tenant_memo]
    tenant.save
    
    redirect_to "/buildings/#{@building_id}/rooms/show/#{@room_id}"
  end
  
  def destroy
    @building_id = params[:building_id]
    @room_id = params[:room_id]
    
    @tenant = Tenant.find(params[:tenant_id])
    @tenant.destroy
    
    redirect_to "/buildings/#{@building_id}/rooms/show/#{@room_id}"
  end
end
