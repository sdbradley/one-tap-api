Rails.application.routes.draw do
  scope "api" do
    namespace "v2" do
      resources :accounts, only: [:index]
      resources :attachments, only: [:index]
      resources :opportunities, only: [:index]
      resources :campaigns, only: [:index]
      resources :contacts, only: [:index]
      get "/news_items", to: "campaigns#index_news"
      get "/statistics", to: "campaigns#statistics"
    end
  end
end
