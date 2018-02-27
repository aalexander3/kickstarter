Rails.application.routes.draw do
  # patch '/projects/:id', to: 'projects#add_contribution', as: 'add_contribution'
  get '/projects/:id/contribute', to: 'projects#contribute', as: 'contribute'

  resources :project_backers
  resources :backers
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
