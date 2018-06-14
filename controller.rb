require("sinatra")
require("sinatra/contrib/all")
require('pry')
require_relative("./models/students.rb")
require_relative("./models/house.rb")
also_reload('./models/*')

#index
get '/students' do
  @students = Student.find_all()
  erb(:index)
end

#new

get '/students/new' do
  erb(:new)
end

#show
get '/students/:id' do
  @student1 = Student.new.find_all(params[:id].to_i)
  erb(:show)
end
