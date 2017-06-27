Rails.application.routes.draw do
	
	get 'home' => 'home#index'
	
	get 'about' => 'about#index'
	
	get 'blog' => 'blog#index'
	
	resources :articles do
	  resources :comments
	end
	
	get 'contact' => 'contact#index'
	
  	root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
