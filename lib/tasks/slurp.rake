namespace :slurp do
  desc "TODO"
  task User: :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join("lib", "csvs", "users_sample.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      tx = User.new
      tx.email = row["email"]
      tx.password_digest = row["password"]
      tx.phone = row["phone"]
      tx.save(:validate => false)
      puts "#{tx.email}, #{tx.phone} saved"

    end
    puts "There are now #{User.count} rows in the User table"
  end

end
