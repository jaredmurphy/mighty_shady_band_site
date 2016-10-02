class MightyShady < Sinatra::Base
  get "/" do
    erb :"index"
  end
end
