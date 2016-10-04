require 'pg'

if ENV["RACK_ENV"] == 'production'
  conn = PG.connect(
    dbname: ENV["POSTGRES_DB"],
    host: ENV["POSTGRES_HOST"],
    password: ENV["POSTGRES_PASS"],
    user: ENV["POSTGRES_USER"]
  )
else
  conn = PG.connect(dbname: "mightyshady_db")
end

# 	 author_id INTEGER NOT NULL REFERENCES users(id) ON UPDATE CASCADE,
conn.exec("DROP TABLE IF EXISTS posts")
conn.exec("CREATE TABLE posts(
	 id      SERIAL PRIMARY KEY,
	 title    VARCHAR(50) NOT NULL,
	 img_url VARCHAR,
	 body VARCHAR NOT NULL,

   author_id INTEGER,
	 category VARCHAR,
   created TIMESTAMP,
	 edited TIMESTAMP
	 )"
)

conn.exec("DROP TABLE IF EXISTS pictures")
conn.exec("CREATE TABLE pictures(
  id SERIAL PRIMARY KEY,
  img_url VARCHAR NOT NULL UNIQUE,
  caption VARCHAR(100),
  year INTEGER NOT NULL,
  created TIMESTAMP)"
)

conn.exec("DROP TABLE IF EXISTS videos")
conn.exec("CREATE TABLE videos(
  id SERIAL PRIMARY KEY,
  youtube_id VARCHAR NOT NULL UNIQUE)"
)
