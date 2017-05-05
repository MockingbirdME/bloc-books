require_relative './config/application'
require 'test/unit'
require 'rack/test'

class BlocBooksTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocBooks::Application.new
  end

  def books_welcome
    welcome_message = "<div>\n\t<p>Welcome to BlocBooks!</p>\n\t<p>Please start by reading Eloquent Ruby</p>\n</div>"

    get '/books/welcome'

    assert last_response.ok?
    assert_equal(welcome_message, last_response.body)
  end


  def books_index  
    get '/books'
  end
  
  def books_show
    get '/books/#{id}'
  end
  
  def books_new
    get '/books/new'
  end
  
  def books_create
    post '/books'
  end
  
  def books_edit
    get '/books/#{id}/edit'
  end
  
  def books_update
    put '/books/#{id}'
  end
  
  def books_delete
    delete '/books/#{id}'
  end

end