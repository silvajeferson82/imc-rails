Rails.application.routes.draw do
  # post 'imc', to: 'calcula_imc#imc'
  get 'index', to: 'calcula_imc#index', as: 'index'
  post 'imc', to: 'calcula_imc#imc', as: 'imc'
end
