Rails.application.routes.draw do
  resources :team_matches do
    resources :player_scores 
  end
  resources :memberships
  resources :teams
  root 'pages#home'
  devise_for :players, controllers: {
    sessions: 'player/sessions',
    registrations: 'player/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
