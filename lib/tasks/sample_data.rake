namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Administrator", 
                         email: "admin@admin.com", 
                         password: "mynameisadmin", 
                         password_confirmation: "mynameisadmin", 
                         admin: true)

    myself = User.create!(name: "Байжикенов Бакытжан", 
                          email: "bahakz@gmail.com", 
                          password: "mynameisbaha", 
                          password_confirmation: "mynameisbaha",
                          lecturer: true)

    User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "tomato",
                 password_confirmation: "tomato")

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    
  end
end