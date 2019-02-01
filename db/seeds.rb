@user1 = User.create!(email: "dame@test.com", password: "123456", password_confirmation: "123456")
@user2 = User.create!(email: "gose@test.com", password: "123456", password_confirmation: "123456")

puts "2 users created"
Post.create!(
  origin: "Ljubljana",
  destination: "Maribor",
  date: Date.today,
  time: Time.utc(2019,"jan",1,20,15,1),
  passengers: 3,
  cost: 500,
  vechile: "Opel Astra",
  phone: 38669652555,
  user_id: @user1.id
)
Post.create!(
  origin: "Skopje",
  destination: "Stip",
  date: Date.today,
  time: Time.utc(2019,"feb",1,20,15,1),
  passengers: 2,
  cost: 300,
  vechile: "Golf 5",
  phone: 38669652555,
  user_id: @user2.id
)
Post.create!(
  origin: "Skopje",
  destination: "Bitola",
  date: Date.today,
  time: Time.utc(2019,"feb",1,20,15,1),
  passengers: 2,
  cost: 300,
  vechile: "Golf 5",
  phone: 38669652555,
  user_id: @user2.id
)
Post.create!(
  origin: "Skopje",
  destination: "Kumanovo",
  date: Date.today,
  time: Time.utc(2019,"feb",1,20,15,1),
  passengers: 2,
  cost: 300,
  vechile: "Golf 5",
  phone: 38669652555,
  user_id: @user2.id
)
Post.create!(
  origin: "Bitola",
  destination: "Kumanovo",
  date: Date.today,
  time: Time.utc(2019,"dec",1,20,15,1),
  passengers: 5,
  cost: 700,
  vechile: "Megan Crn",
  phone: 38669652555,
  user_id: @user1.id
)
Post.create!(
  origin: "Beograd",
  destination: "Vranje",
  date: Date.today,
  time: Time.utc(2018,"jan",1,20,15,1),
  passengers: 6,
  cost: 500,
  vechile: "Megan",
  phone: 38669652555,
  user_id: @user2.id
)
puts "4 posts created"
