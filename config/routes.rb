Rails.application.routes.draw do

  scope '/api' do
    resources :tasks
    resources :matrices
  end

end
