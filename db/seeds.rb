# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  password = 'Pass_123'
  User.create! [{ password: "Diff3r3_Nt", email: 'god@gods.gov', role: 'god' },
                { password: password, email: 'erik@pm.me' },
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
