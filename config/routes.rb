Rails.application.routes.draw do
  get 'bmi_status/index'
  get 'bmi_status/show'
  resources :weights
  resources :patients do
    resources :charts, only: [] do
      collection do
        get 'weight_by_month'
      end
    end
  end
  resources :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
