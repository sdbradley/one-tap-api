Rails.application.routes.draw do
  scope "api" do
    namespace "v2" do
      post "authentication", to: "authentication#create"
      resources :accounts, only: [:index]
      resources :attachments, only: [:index]
      resources :opportunities, only: [:index]
      resources :campaigns, only: [:index]
      resources :contacts, only: [:index]
      get "/news_items", to: "campaigns#index_news"
      get "/statistics", to: "campaigns#statistics"
      resources :users do
        collection do
          get "current", to: "current"
        end
      end
    end
  end
end
