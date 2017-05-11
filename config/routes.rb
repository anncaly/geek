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
        match 'mark_deleted', to: '/v1/companies/mark_deleted', via: :post
        resources :jobs
      end
      match 'mark_deleted', to: '/v1/companies/mark_deleted', via: :post
    end
  end
end