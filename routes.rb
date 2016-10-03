class MightyShady < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/band" do
    erb :band
  end

  get "/musicians/:id" do
    @musician = "Eric McCoy"
    erb :musician
  end

  get "/band/eric" do
    @musician = "Eric Mccoy"
    erb :index
  end
end
