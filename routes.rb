class MightyShady < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/band" do
    erb :band
  end

  get "/band/eric" do
    @musician = "Eric Mccoy"
    erb :index
  end

  get "/music" do
    erb :music
  end

  get "/media" do
    images = conn.exec("SELECT * FROM pictures ORDER BY year DESC;")
    # @images = images.reverse.sort_by{|img| img["id"]}
    @videos = conn.exec("SELECT * FROM videos;")
    @images = images
    erb :media
  end

  get "/blog" do
    @posts = conn.exec("SELECT * FROM posts;")
    erb :blog
  end

  private

    def conn
        if ENV["RACK_ENV"] == 'production'
           @@conn ||= PG.connect(
            dbname: ENV["POSTGRES_DB"],
            host: ENV["POSTGRES_HOST"],
            password: ENV["POSTGRES_PASS"],
            user: ENV["POSTGRES_USER"]
        )
        else
           @@conn ||= PG.connect(dbname: "mightyshady_db")
        end
    end
end
