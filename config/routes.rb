Rails.application.routes.draw do
  scope "api" do
    namespace "v2" do
      post "authentication", to: "authentication#create"
      namespace :public do
        post "/users/password", action: "reset_password"
        post "/users/create", action: "create_user"
      end
      resources :accounts, only: [:index, :show]
      resources :attachments, only: [:index]
      resources :opportunities, only: [:index, :show]
      resources :campaigns, only: [:index, :show]
      resources :contacts, only: [:index]
      resources :scorecard, only: [:index]
      resources :users, only: [:update]
      get "/notes", to: "campaigns#notes"
      get "/statistics", to: "campaigns#statistics"
      get "/attachments/:attachment_id/download/:user_id", to: "attachments#index_download"
      post "opportunities/:opportunity_id/feedback", to: "opportunities#create_feedback"
      get "opportunities/:opportunity_id/contact_roles", to: "opportunities#contact_roles"
      get "campaigns/:id/opportunities/export", to: "campaigns#index_opportunities_export"
      resources :users do
        collection do
          get "current", to: "current"
        end
      end
      put "/users/:user_id", to: "users#update"
      get "/admin/users", to: "admin#index_users"
      put "/admin/users/:id", to: "admin#update_user"
      post "/admin/users", to: "admin#create_user"
      delete "/admin/users/:id", to: "admin#destroy_user"
      get "/admin/notifications", to: "notifications#index"
      put "/admin/notifications/:id", to: "notifications#update"
      get "/account/:account_id/opportunities/:opportunity_id/print", to: "pdf#print"
    end
  end
end
