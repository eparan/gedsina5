# main.rb
require 'rubygems'
require 'sinatra'
require "sequel"
require 'haml'
require 'sass'

# configuration
DB = Sequel.sqlite('./gedsina.db')

# create an items table
if !DB.table_exists?(:todos)
	DB.create_table :todos do
		primary_key :id
		String :title
		DateTime :created_at
		Boolean :complete, :default => false
	end
end

# model
class Todo < Sequel::Model
end

# controller actions
## index
get '/' do
	@todos = Todo.order(:created_at)
	haml :index
end

## create
post '/' do
	Todo.insert(:title => params[:title], :created_at => Time.now )
  redirect '/'
end

## mark complete / incomplete
get '/:id/mark/:is_complete' do
	todo = Todo[params[:id]]
	todo.complete = (params[:is_complete] == 'complete')

	if todo.save
    redirect '/'
  end
end

## delete
get '/:id/delete' do
	Todo[params[:id]].destroy
	redirect '/'
end

# SASS stylesheet
get '/stylesheets/style.css' do
#	header \
#		"Content-Type" => "text/css; charset=utf-8"
	sass :style
end


