Rails.application.routes.draw do

  scope '/api' do
    resources :tasks
    resources :matrices
  end

  match 'application/feedback', to: 'application#feedback', via: [:post]
  match '*path', to: "application#index", via: :get

end
