Rails.application.routes.draw do
  devise_for :users
  resources :shipitems, :receiveitems, :inspectitems, 
            :licenses, :documents, :requisitions, 
            :inventories, :pars, :cpars, 
            :cars, :changerequests, :actionitems

  root 'welcome#index'
  get 'welcome/options'

end
