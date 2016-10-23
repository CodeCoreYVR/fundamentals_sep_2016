# this line is needed if you have a version of sinatra such as 2.0.0.beta2 that
# conflicts with `sinatra/reloader`
gem 'sinatra', '1.4.7'

require 'sinatra'
require 'sinatra/reloader'

# GET: HTTP VERB
# '/': HTTP URL
get '/' do
  erb(:index)
end

post '/split' do
  # params { 'amount' => '150.25' }
  amount           = params[:amount].to_f
  tip              = params[:tip].to_f
  tax              = params[:tax].to_f
  number_of_people = params[:number_of_people].to_f
  if number_of_people > 0
    @person_amount   = (amount +
                        (amount * tip / 100) +
                        (amount * tax / 100)) / number_of_people
  end
  erb(:index)
end
