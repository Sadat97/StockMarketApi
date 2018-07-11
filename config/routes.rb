Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
    #assest Routes
      post    "/addasset",           to: "asset#add"
      post    "/updateasset",        to: "asset#update"
      get     "/getAsset/:id",       to: "asset#show"
      get     "/listAsset",          to: "asset#list"

    #Portofolio Routes
      post  "/createPorto",            to:"portofolio#create"
      get   "/showProfile/:id/:pro_id",to:"portofolio#show"

    #User Routes
      post "/createuser",             to:"user#create"

    end
