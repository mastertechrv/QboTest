Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :quickbooks do
	  collection do
	    get :authenticate
	    get :oauth_callback
	  end
	end


	root to: 'welcome#index'
end
