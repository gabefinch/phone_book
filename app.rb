require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone_book')

get('/') do
  @list = Contact.all()
  erb(:home)
end

post('/add') do
  input_name = params['name']
  input_number = params['number']
  new_phone = Phone.new({:number => input_number, :type => "Home"})
  Contact.new({:name => input_name, :phones => [new_phone]})
  redirect('/')
end

get('/detail/:id') do
  @contact = Contact.find_id(params['id'].to_i())
  erb(:contact_detail)
end

post('/detail') do
  erb(:contact_detail)
end
