Rails.application.routes.draw do
  resources :pontos do
    collection do
      get 'registrar'
      get 'entrada_saida'
    end
  end

  resources :equipes
  resources :projetos
  resources :emprestimos
  resources :equipamentos

  devise_for :users
  resources :users

  get 'welcome/index'
  root 'welcome#index'
end
