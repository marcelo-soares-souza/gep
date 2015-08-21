Rails.application.routes.draw do
  resources :projetos
  resources :emprestimos
  resources :equipamentos
  devise_for :users
  resources :users

  get 'welcome/index'
  root 'welcome#index'
end
