Rails.application.routes.draw do
  root to: 'restaurants#index'
  # CRUD actions
  # DHH 

  # 1.1 C[R]UD READ (ALL)
  get 'restaurants', to: 'restaurants#index'

  # 2. [C]RUD  NEW record
  get 'restaurants/new', to: 'restaurants#new'

  # 2 [C]RUD CREATE the record coming from the NEW form
  post 'restaurants', to: 'restaurants#create'

  # 1.2 C[R]UD READ (ONE)
  get 'restaurants/:id', to: 'restaurants#show'

  #  CR[U]D EDIT a record
  get 'restaurants/:id/edit', to: 'restaurants#edit'

  #  CR[U]D UPDATING a record
  patch 'restaurants/:id', to: 'restaurants#update'

  # CRU[D] DELETE a record
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
