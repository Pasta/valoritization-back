Rails.application.routes.draw do

  scope '/api' do
    resources :tasks
    resources :matrices
  end

  get '/1/980190992', to: 'application#index'
  get ':id', to: 'application#index'

end
