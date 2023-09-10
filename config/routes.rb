Rails.application.routes.draw do
  root 'health_check#index'

  resources :students do
    collection do
      get 'cpf/:cpf', action: 'search_by_cpf'
    end
  end
end
