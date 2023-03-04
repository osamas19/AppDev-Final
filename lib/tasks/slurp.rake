namespace :slurp do
  desc "TODO"
  task user: :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join("lib", "csvs", "users_sample.csv"))
    puts csv_text
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO8859-1")
    puts csv
    csv.each do |row|
      puts row.to_hash
      t = User.new
      t.email = row["email"]
      t.password = row["password"]
      t.phone = row["phone"]

      t.save
      puts "#{t.email}, #{t.phone} saved"
    end

    puts "There are now #{User.count} rows in the User table"
  end

end
