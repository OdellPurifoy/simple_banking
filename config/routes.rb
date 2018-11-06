Rails.application.routes.draw do
  root to: 'pages#index'
  resources :bank_accounts, only: %i[index show]
end
