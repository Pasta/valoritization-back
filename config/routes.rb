Rails.application.routes.draw do

  scope '/api' do
    resources :tasks
    resources :matrices
  end

  match '*path', to: "application#index", via: :get

end
