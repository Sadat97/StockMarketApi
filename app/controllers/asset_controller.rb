class AssetController < ApplicationController
    before_action :set_asset, only: [:show, :update]
   
   #adds a new Asset to the market place
    def add
       @asset = Asset.create!(asset_param)
        json_response(@asset, :created)
    end

    #updates the price of the asset
    def update
      @asset.update(price: params[:asset][:price])
     json_response(@asset,:created)
    end

    def show  
    puts @asset  
    json_response(@asset)
    end

    def list 
    @asset = Asset.all
    json_response(@asset)
    end

private

  def asset_param
    # whitelist params
    params.require(:asset).permit(:name,:price)

  end

  def set_asset
    @asset = Asset.find(params[:id])
  end
end

