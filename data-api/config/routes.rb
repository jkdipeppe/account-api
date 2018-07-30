Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      get '/users/email/:email', to: 'users#find_by_email', email: /.*/

      resources :accounts
      get '/accounts/email/:email', to: 'accounts#find_accounts_by_email', email: /.*/

      resources :bills
      get '/bills/email/:email', to: 'bills#find_bills_by_email', email: /.*/
      get '/bills/unpaid/:email', to: 'bills#unpaid_bills_by_email', email: /.*/
      get '/bills/paid/:email', to: 'bills#paid_bills_by_email', email: /.*/
      get '/bills/totalcharges/:email', to: 'bills#total_charges_by_email', email: /.*/
      get '/bills/averageusage/:email', to: 'bills#average_usage_by_email', email: /.*/
      get '/bills/averagecharges/:email', to: 'bills#average_charges_by_email', email: /.*/

    end
  end

  post '/login', to: 'auth#login'

end
