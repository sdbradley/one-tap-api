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
      get "/campaigns/:campaign_id/notes", to: "campaigns#notes"
      get "/statistics", to: "campaigns#statistics"
      get "/attachments/:attachment_id/download", to: "attachments#index_download"
      post "opportunities/:opportunity_id/feedback", to: "opportunities#create_feedback"
      get "opportunities/:opportunity_id/contact_roles", to: "opportunities#contact_roles"
      resources :users do
        collection do
          get "current", to: "current"
        end
      end
      get "/admin/users", to: "admin#index_users"
      put "/admin/users/:id", to: "admin#update_user"
      post "/admin/users", to: "admin#create_user"
      delete "/admin/users/:id", to: "admin#destroy_user"
      get "/admin/notifications", to: "notifications#index"
      put "/admin/notifications/:id", to: "notifications#update"
    end
  end
end
