class MightyShady < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/band" do
    erb :band
  end

  get "/band/:musician" do
    @musician = "Eric Mccoy"
    erb :musician
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

  get "/tour" do
    dates = HTTParty.get(ENV["BIT_EVENTS"])
    @tour_dates = dates.sort_by { |event| event["datetime"]  }
    erb :tour
  end

  get "/social" do
    erb :social
  end

  get "/contact" do
    erb :contact
  end

  post "/email" do
    email = Pony.mail(
      :from => params[:name] + "<" + params[:email] + ">",
      :to => ENV['MIGHTY_SHADY_EMAIL'],
      :subject => "#{params[:name]} has contacted you - #{params[:option].upcase}",
      :body => "#{params[:message]} \nsent by #{params[:email]}",
      # :port => '587',
      :via => :smtp,
      :via_options => {
        :address              => 'smtp.gmail.com',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => ENV['MIGHTY_SHADY_EMAIL_USERNAME'],
        :password             => ENV['MIGHTY_SHADY_EMAIL_PASSWORD'],
        # :authentication       => :plain,
        :domain               => 'localhost.localdomain'
      })
    erb :successful_contact
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
