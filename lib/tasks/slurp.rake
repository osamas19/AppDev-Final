namespace :slurp do
  desc "TODO"
  task user_cards: :environment do
    require 'csv'
    csv_text = File.read(Rails.root.join("lib", "csvs", "user_card_sample.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      tx = UserCard.new
      tx.name_as_shown = row["name_as_shown"]
      tx.user_id = row["user_id"]
      tx.card_id = row["card_id"]
      tx.card_4_digits = row["card_4_digits"]
      tx.validity = row["validity"]
      tx.save(:validate => false)
      puts "#{tx.user_id}, #{tx.card_id}, #{tx.card_4_digits} saved"

    end
    puts "There are now #{UserCard.count} rows in the User Cards table"
  end

end
