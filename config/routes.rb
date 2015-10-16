Rails.application.routes.draw do

  scope '/api' do
    resources :tasks
    resources :matrices
  end

  get ':id', to: 'application#index'

end
