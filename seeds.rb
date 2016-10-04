require 'pg'
#
if ENV["RACK_ENV"] == 'production'
  conn = PG.connect(
    dbname: ENV["POSTGRES_DB"],
    host: ENV["POSTGRES_HOST"],
    password: ENV["POSTGRES_PASS"],
    user: ENV["POSTGRES_USER"]
  )
else
  conn = PG.connect(dbname: "mightyshady_db");
end


conn.exec(
  "INSERT INTO posts (title, img_url, body, category)
  VALUES ('First Post', 'https://avatars.githubusercontent.com/u/4039154?v=3', 'This is my first post', 'Test')"
)


  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/M1v8PWr.jpg', 'Inspired by another successful show at Parlor City', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/gIWXC2h.jpg', 'Dangerfest IV', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/vgrBoCD.jpg', 'Dangerfest IV', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/aSZ1Uvx.jpg', 'Dangerfest IV', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/zEzwv1V.jpg', 'Dangerfest IV', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/Kqr6uLb.jpg', 'Dangerfest IV', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/PxdLaxL.jpg', 'Opening for Roster McCabe', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/66VVLSQ.jpg', 'The Des Moines Register made us into cartoons!', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/Uu3Mm2Q.jpg', '8035 Music Festival', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/faMFCDn.jpg', 'Waves Single release show - DGs Taphouse', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/qeKH6Fk.jpg', 'Introducing are new bass player, Rooney!', 2015)"
  )
  # conn.exec("INSERT INTO pictures (img_url, caption, year)
  # VALUES ('http://i.imgur.com/bt1U4xw.jpg', 'Writing in the basement', 2015)"
  # )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/W5Rmf7c.jpg', 'Guitars and Highlife', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/3kZgI6O.jpg', 'NYE poster', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/nOYNTwA.jpg', 'The Oasis in Marshalltown with Aitas', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/FHVg53W.jpg', 'Marshalltown is packed tonight!', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/aUk77fW.jpg', 'NYE at the Vaudeville Mews', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/RfAVb1I.jpg', 'Marshalltown was CRAZY tonight', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/6JWOLt9.jpg', 'Little Big Fest', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/CR4D9bs.jpg', 'Woolys', 2014)"
  )
  # conn.exec("INSERT INTO pictures (img_url, caption, year)
  # VALUES ('http://i.imgur.com/xYJFHPG.jpg', 'Setting up lights at the Iowa City Yacht Club', 2014)"
  # )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/hL1n2XA.jpg', 'DGs Taphouse', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/WY2E3YF.jpg', 'Halloween at the Vaudeville Mews', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/iFZ73ou.jpg', 'Album Release Poster', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/BOpJwUw.jpg', 'Teaching DJ some songs on the road to Chicago', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/UouCWpG.jpg', 'First time playing in Wrigleyville', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/SUwKDqO.jpg', 'Getting ready for IPR Studio One', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/bVLitoJ.jpg', 'The Wizard of Ames', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/CHHXkaL.jpg', 'Des Moines Farmers Market', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/eN3hffw.jpg', 'Album release show at the Gas Lamp', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/7JHsAMf.jpg', 'Gas Lamp is packed for our release show', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/T4hEOXu.jpg', 'Heading off to Summer Camp', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/VmyWU3v.jpg', 'Psychadelic Merch Stand', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/A31fSTZ.jpg', 'Sound check for KCWI Great Day Morning Show', 2013)"
  )
  # conn.exec("INSERT INTO pictures (img_url, caption, year)
  # VALUES ('http://i.imgur.com/UGtLbVq.jpg', 'Nova Labs 1 Year Anniversary Party', 2014)"
  # )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/FC6i4ZF.jpg', 'En route to Ames', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/WiO40iu.jpg', 'Woolys!', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/5ZRNuE8.jpg', '8035 - IPR Side Stage', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/SH9BI1C.jpg', 'Aww you guys are the best', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/jqDrnqd.jpg', 'Gas Lamp release show', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/DKygE6m.jpg', 'Bringing Sasquatch and beers to Iowa City', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/zbf2GTw.jpg', 'Broken leg, but can still play guitar!', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/VF4xdi7.jpg', 'Jammin at Shagstock', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/ZnUoNCK.jpg', 'First gig - A graduation party X D', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/15XL8Sv.jpg', 'Recording the 2nd EP', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/PTuiTGJ.jpg', 'Just wont the Winter Waka Classic!', 2013)"
  )
  # conn.exec("INSERT INTO pictures (img_url, caption, year)
  # VALUES ('http://i.imgur.com/xZAscm7.jpg', 'Merch box makes for a nice Farmers Market prop', 2014)"
  # )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/J04BiQk.jpg', 'Jammin on the way to Mason City', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/VXNgPbx.jpg', 'Studio Zen', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/7tMaCUI.jpg', 'Ran into Ron at the KCWI Great Day Show', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/DB0R57p.jpg', 'Iowa City Yacht Club tonight', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/4ycV8bC.jpg', 'Excited about playing at Wakarusa', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/4jF5z7V.jpg', 'A great night on Studio One', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/mrA4vEb.jpg', 'On the road to Rochester', 2013)"
  )
  # conn.exec("INSERT INTO pictures (img_url, caption, year)
  # VALUES ('http://i.imgur.com/ez6OnIW.jpg', 'NYE sound check', 2015)"
  # )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/GcQ8Ubm.jpg', '2nd EP ready to release!', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/FQImG7a.jpg', '8035', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/sc55FuN.jpg', 'Recording our first EP', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/TXNnYN6.jpg', 'Acoustic show at Raygun', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/CB3QBKe.png', 'Waves Video Promo', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/VrfqOXB.jpg', 'Upcoming show at DGs Taphouse', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/KOxhY2S.jpg', 'Skating for the Gunter music video', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/oXd4aUq.jpg', 'Found in Iowa City', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/ZNOo3JZ.jpg', 'Acoustic tracks for Love in Motion', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/Y3nIAxP.jpg', 'Briar Patch', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/iDD11tA.jpg', 'Lorados', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/OK1rTgv.jpg', 'Gas Lamp', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/LmGMXn1.jpg', '8035', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/IqT5WTL.jpg', 'Woolys with Roster McCabe', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/iprHrJR.jpg', '8035 feat. Marian on the sax', 2015)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/eg1nlvY.jpg', 'Meetings with Shotgun Management', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/BvcIuc7.jpg', 'At the Underground', 2012)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/ugiWWSa.jpg', 'Shagstock', 2013)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/6a0IxZ2.jpg', 'Woolys with Family Groove Company', 2014)"
  )
  conn.exec("INSERT INTO pictures (img_url, caption, year)
  VALUES ('http://i.imgur.com/CWa8Hqb.jpg', 'Halloween at Vaudeville Mews', 2014)"
  )


  conn.exec("INSERT INTO videos (youtube_id)
  VALUES ('7aWI45yk-uc')"
  )
  conn.exec("INSERT INTO videos (youtube_id)
  VALUES ('l-0DVXxvjpo')"
  )
  conn.exec("INSERT INTO videos (youtube_id)
  VALUES ('PBC2e3sScn0')"
  )
  conn.exec("INSERT INTO videos (youtube_id)
  VALUES ('F92dBH2sjXM')"
  )


puts "Created #{conn.exec('Select * FROM posts').count} posts"
puts "Created #{conn.exec('Select * FROM pictures').count} pictures"
# venues
# # Des moines
# "The Underground",
# "Woolys",
# "Vaudeville Mews",
# "Gas Lamp",
# "El Bait Shop",
# "Des Moines Farmers' Market",
# "Star Bar",
# "Whiskey Dixx",
# "The House of Bricks",
# "Val Air Ballroom",
# "Beechwood Lounge",
# "Raygun Teeshirts",
# "Marque Lounge",
# "Lot 33",
# "The Flying Moose",
# "Bombay Bicycle Club"
#
# # Indianola
# "Zoo Bar",
# "Simpson College",
# # Ames
# "DG's Taphouse",
# "Iowa Music Store",
# # Boone
# "Shenanigans Event Center",
# #Marshalltown
# "The Oasis",
# # Iowa City
# "The Yacht Club",
# "Gabe's Oasis",
# "The Mill",
# # Cedar Rapids
# "Just Jules",
# "Parlor City",
# # Mason City
# "Lorados",
# "Murmur",
# # Minneapolis
# "Kathy's Pub",
# "Driftwood Char Bar",
# #Nevada
# "6th Street Pub",
# # Dubuque
# "The Lift",
# # Chicago
# "John Barleycorn"
#
#
#
# festivals
# "Riverside Jam",
# "Family Gathering",
# "Campustown Summerfest",
# "Summer Camp Music Festival",
# "Briar Patch",
# "Adventure Camp Music Festival",
# "Shagstock",
# "Dangerfest",
# "8035",
# "Little Big Fest"
# "Wakarusa",
# "Love Fest in the Midwest"
# Bushwak
#
# # radio and television
# "KCWI Great Day Morning Show",
# "IPR Studio One",
# "The Ron Sorenson Show - Des Moines 98.9 FM KFMG",
# "KFMG Homegrown - Des Moines 98.9 FM KFMG",
# "IPR Java Blend"
#
# # Accolades
# "SXSW Compilation Winner",
# "Waka Winter Classic Winner",
# "Little Big Fest Community Chosen Artist"
