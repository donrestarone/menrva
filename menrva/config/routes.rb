Rails.application.routes.draw do
  get 'paragraphs/new'
  get 'paragraphs/show'
  get 'paragraphs/create'
root :to => "home#index"

  get 'comparisons/new', to: 'comparisons#new', as: 'new_comparison'
  post 'comparisons/create', to: 'comparisons#create', as: 'create_comparison'
  get 'comparisons/show', to: 'comparisons#show', as: 'show_comparison'


  get 'paragraphs/new', to: 'paragraphs#new', as: 'new_paragraph'
  post 'paragraphs/create', to: 'paragraphs#create', as: 'create_paragraph'
  get 'paragraphs/show', to: 'paragraphs#show', as: 'show_paragraph'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
