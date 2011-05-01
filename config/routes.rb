ActionController::Routing::Routes.draw do |map|
  map.resources :schedules

  map.resources :networks


	map.connect 'users/change', :controller => 'users', :action => 'change'
	map.connect 'users/reset', :controller => 'users', :action => 'reset'
	map.connect 'users/login', :controller => 'users', :action => 'login'
	map.connect 'users/logout', :controller => 'users', :action => 'logout'
	map.resources :users

	map.connect 'people/directory', :controller => 'people', :action => 'directory'
	map.connect 'people/directory.pdf', :controller => 'people', :action => 'directory', :format => 'pdf'
	map.connect 'people/ungrouped', :controller => 'people', :action => 'ungrouped'
	map.connect 'people/uncontactable', :controller => 'people', :action => 'uncontactable'
	map.resources :people

	map.resources :residences

	map.connect 'attendances/take', :controller => 'attendances', :action => 'take'
	map.connect 'attendances/followup', :controller => 'attendances', :action => 'followup'
	map.connect 'attendances/report', :controller => 'attendances', :action => 'report'
	map.connect 'attendances/history', :controller => 'attendances', :action => 'history'
	map.connect 'attendances/lookup', :controller => 'attendances', :action => 'lookup'
	map.connect 'attendances/old', :controller => 'attendances', :action => 'old'
	map.connect 'attendances/choose', :controller => 'attendances', :action => 'choose'
	map.connect 'attendances/register', :controller => 'attendances', :action => 'register'
	map.resources :attendances

	map.resources :users

	map.resources :services

	map.resources :groups

	map.resources :people

	# The priority is based upon order of creation: first created -> highest priority.

	# Sample of regular route:
	#	 map.connect 'products/:id', :controller => 'catalog', :action => 'view'
	# Keep in mind you can assign values other than :controller and :action

	# Sample of named route:
	#	 map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
	# This route can be invoked with purchase_url(:id => product.id)

	# Sample resource route (maps HTTP verbs to controller actions automatically):
	#	 map.resources :products

	# Sample resource route with options:
	#	 map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

	# Sample resource route with sub-resources:
	#	 map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

	# Sample resource route with more complex sub-resources
	#	 map.resources :products do |products|
	#		 products.resources :comments
	#		 products.resources :sales, :collection => { :recent => :get }
	#	 end

	# Sample resource route within a namespace:
	#	 map.namespace :admin do |admin|
	#		 # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
	#		 admin.resources :products
	#	 end

	# You can have the root of your site routed with map.root -- just remember to delete public/index.html.
	# map.root :controller => "welcome"

	# See how all your routes lay out with "rake routes"

	# Install the default routes as the lowest priority.
	# Note: These default routes make all actions in every controller accessible via GET requests. You should
	# consider removing the them or commenting them out if you're using named routes and resources.
	map.connect ':controller/:action/:id'
	map.connect ':controller/:action/:id.:format'

	map.root :controller => 'attendances', :action => 'take'

end
