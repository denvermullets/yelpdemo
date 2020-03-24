Rails.application.routes.draw do
  get 'about', to: 'static#about'

  get 'contact', to: 'static#contact'
end
