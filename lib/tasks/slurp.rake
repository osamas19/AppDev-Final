namespace :slurp do
  desc "TODO"
  task User: :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join("lib", "csvs", "users_sample.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      tx = UserCard.new
      tx.email = row["email"]
      tx.password = row["password"]
      tx.phone = row["phone"]
      tx.save
      puts "#{tx.email}, #{tx.password}, #{tx.phone} saved"

    end
    puts "There are now #{User.count} rows in the User Cards table"
  end

end
