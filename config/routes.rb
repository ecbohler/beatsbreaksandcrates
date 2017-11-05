Rails.application.routes.draw do
  get 'welcome/index'

  get 'workshop/index'

  get 'shop/index'

  resources 'contacts', only: [:new, :create], path_names: { new: '' }
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
