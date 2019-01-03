# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  password = 'Pass_123'
  User.create! [{ password: password, email: 'erik@pm.me' },
                { password: password, email: 'zambo@pm.me' },
                { password: password, email: 'tia@pm.me' },
                { password: password, email: 'roby@pm.me' },
                { password: password, email: 'gio@pm.me' },
                { password: password, email: 'daniel@pm.me' },
                { password: password, email: 'tommy@pm.me' },
                { password: password, email: 'naji@pm.me' },
                { password: password, email: 'tania@pm.me' },
                { password: password, email: 'tatti@pm.me' },
                { password: password, email: 'dany@pm.me' }]
end

Question.create! [{ position: 0, value: "Shares data with third parties" },
                  { position: 1, value: "Resells your data" },
                  { position: 2, value: "Hard to unsubscribe" },
                  { position: 3, value: "Min password length (number)" },
                  { position: 4, value: "Max password length (number)" },
                  { position: 5, value: "Deletes your data after cancel account" },
                  { position: 6, value: "Anonymices your data after cancel account" },
                  { position: 7, value: "Indexes user profile" },
                  { position: 8, value: "User profile is public" },
                  { position: 9, value: "User profiles are scrape-able (sequential IDs)" },
                  { position: 10, value: "Report a breach (link to news article)" }]
