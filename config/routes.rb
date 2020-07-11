Rails.application.routes.draw do
	get'students' => 'students#index'
	root 'students#index'
	get 'students/new', to: 'students#new'
	get 'students/:id', to: 'students#show'
	resources :students, only: [:index,:new,:show]
	resources :search, only:[:index] do
		collection do	#used when there is no unique field in the route
			get 'results'
		end
	end
end