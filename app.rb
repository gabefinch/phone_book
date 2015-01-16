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
  input_type = params['type']
  new_phone = Phone.new({:number => input_number, :type => input_type})
  Contact.new({:name => input_name, :phones => [new_phone]})
  redirect('/')
end

get('/detail/:id') do
  @contact = Contact.find_id(params['id'].to_i())
  erb(:contact_detail)
end

post('/add_detail/:id') do
  id = params['id']
  @contact = Contact.find_id(params['id'].to_i())
  input_number = params['number']
  input_type = params['type']
  new_phone = Phone.new({:number => input_number, :type => input_type})
  @contact.add_phone(new_phone)
  redirect back
end
