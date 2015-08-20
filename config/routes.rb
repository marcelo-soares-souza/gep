Rails.application.routes.draw do
  resources :emprestimos
  resources :equipamentos
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
end
