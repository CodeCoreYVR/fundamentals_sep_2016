gem 'sinatra', '1.4.7'

require 'data_mapper'
require 'sinatra'
require 'sinatra/reloader'

enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'secret']
  end
end

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/database.db")

# To use DataMapper we create a class. The class name should be singular. The
# table name will be a pluralized version of the class name. In this case the
# table name will be `contacts`
class Contact
  # including this will add all the data mapper functionalities we're going to
  # use
  include DataMapper::Resource

  property :id, Serial # INTEGER PRIMARY KEY AUTOINCREMENT
  property :full_name, String # String -> VARCHAR(255)
  property :email, String
  property :message, Text # if you want the text to be more than 255 chars
                          # you can use Text which support a much longer
end

# calling this line will tell DataMapper to create the table in the database
# if the table doesn't exist. If the table exists, then DataMapper will only
# add columns that haven't been added already to the table.
DataMapper.auto_upgrade!

get '/' do
  session[:last_visited_at] = Time.now.strftime('%Y-%B-%d %H:%M')
  # erb :index, layout: :template
  erb(:index, { layout: :template })
end

post '/contact' do
  Contact.create(params)
  # params => { 'full_name' => 'Tammam Kbeili', 'email' => 'tam@codecore.ca' }
  erb(:thank_you, { layout: :template })
end

get '/list' do
  protected!
  @contacts = Contact.all
  erb(:list, { layout: :template })
end

get '/contact/:id' do |id|
  protected!
  @contact = Contact.get id
  erb(:contact, { layout: :template })
end
