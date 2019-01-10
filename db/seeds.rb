if Rails.env.development?
  password = 'Pass_123'
  god, user, * =
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
  Page.create! [{ name: 'Facebook', url: 'https://facebook.com', html: '', creator: god },
                { name: 'Flatmates', url: 'https://flatmates.com.au', html: '', creator: user }]
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
                  { position: 10, value: "Does it require more privileges than necessary" },
                  { position: 11, value: "Does it respect non-tracking browser settings?" },
                  { position: 12, value: "Has it been breached? (link to news article)" }]
