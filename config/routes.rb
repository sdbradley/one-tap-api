Rails.application.routes.draw do
  scope "api" do
    namespace "v2" do
      post "authentication", to: "authentication#create"
      resources :accounts, only: [:index, :show]
      resources :attachments, only: [:index]
      resources :opportunities, only: [:index, :show]
      resources :campaigns, only: [:index]
      resources :contacts, only: [:index]
      resources :scorecard, only: [:index]
      get "/news_items", to: "campaigns#index_news"
      get "/statistics", to: "campaigns#statistics"
      get "/attachments/:attachment_id/download", to: "attachments#index_download"
      post "opportunities/:opportunity_id/feedback", to: "opportunities#create_feedback"
      resources :users do
        collection do
          get "current", to: "current"
        end
      end
    end
  end
end
