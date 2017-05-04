Rails.application.routes.draw do
  # get 'jobs/index'
  #
  # get 'jobs/show'
  #
  # get 'jobs/create'

  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      resources :companies do
        resources :jobs
      end
    end
  end
end