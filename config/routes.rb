Rails.application.routes.draw do

  scope '/api' do
    resources :tasks

    # In case you want to allow a client from another server:
    # match 'tasks', to: 'tasks#create', via: [:options]
    # match 'tasks/:id', to: 'tasks#show', via: [:options]
  end

end
