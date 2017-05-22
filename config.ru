require './config/application'
require 'pry'
app = BlocWorks::Application.new

use Rack::ContentType

app.route do
  resources :books
end

run(app)
