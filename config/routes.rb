Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles', to: 'articles#index', as: :articles
  post 'articles', to: 'articles#create'

  get 'articles/new', to: 'articles#new', as: :new_article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  get 'articles/:id', to: 'articles#show', as: :article
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy'

  root to: 'articles#index'
end
