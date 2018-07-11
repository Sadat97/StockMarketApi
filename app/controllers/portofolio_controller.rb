class PortofolioController < ApplicationController
    before_action :set_profile, only: [:show]
   
    def create 
        
        params[:porto][:invested_amount].each_with_index do |asset,index|
        asset_price = Asset.find(params[:porto][:asset_id][index].to_i)
         Portofolio.create(
            user_id: params[:porto][:user_id],
            profile_id:  params[:porto][:profile_id],
            invested_amount:  asset,
            asset_id:  params[:porto][:asset_id][index],
            last_price: asset_price.price.to_i,
            current_investment: asset,
            stock_name: asset_price.name
        )
        end
        @portoflio = Portofolio.where(user_id: params[:porto][:user_id],profile_id: params[:porto][:profile_id])
        json_response(@portofolio,:created)

    end


    def show
      @profile = Portofolio.where(user_id: params[:id],profile_id: params[:pro_id])
      json_response(@profile)
    end

 private
    def portof_param
        params[:porto][:asset_id] ||= []
        params[:porto][:invested_amount] ||= []
        params[:porto][:last_price] = params[:porto][:invested_amount]
        params.require(:porto).permit(:user_id,:profile_id,:last_price,invested_amount:[],asset_id: [])
    end

    def set_profile
    @profile = Portofolio.where(user_id: params[:id],profile_id: params[:pro_id])
   
    @profile.each_with_index do |object,index|
     #gets the asset latest Price
     asset =Asset.find(@profile[index][:asset_id].to_i)
    
     #last price for the stock 
     last_price = @profile[index][:last_price]
     #The Invested amount to track the change 
     invested_amount = @profile[index][:current_investment]
    
     #for updating the loss or gain in the investment
    if @profile[index][:last_price].to_i != asset.price.to_i 
     investment_change =  ( asset.price.to_i / last_price.to_f) * invested_amount
     profile_update = Portofolio.find(@profile[index][:id].to_i)
     profile_update.update(current_investment: investment_change,last_price: asset.price.to_i)
     
    end
    
    end    

    
end

end
