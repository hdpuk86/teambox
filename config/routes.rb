Rails.application.routes.draw do
  resources :groupings, except: [:new, :edit, :update]
  resources :team_members

  root to: 'team_members#index'
end
