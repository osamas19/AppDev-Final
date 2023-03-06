namespace :slurp do
  desc "TODO"
  task Card: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "credit_cards_List.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Card.new
      t.annual_fee = row["annual_fee"]
      t.card_name = row["card_name"]
      t.cash_limit = row["cash_limit"]
      t.cashback = row["cashback"]
      t.cat1 = row["cat1"]
      t.cat1_cashback = row["cat1_cashback"]
      t.cat1_cash_limit = row["cat1_cash_limit"]
      t.cat2 = row["cat2"]
      t.cat2_cashback = row["cat2_cashback"]
      t.cat2_cash_limit = row["cat2_cash_limit"]
      t.cat3 = row["cat3"]
      t.cat3_cashback = row["cat3_cashback"]
      t.cat3_cash_limit = row["cat3_cash_limit"]
      t.cat4 = row["cat14"]
      t.cat4_cashback = row["cat4_cashback"]
      t.cat4_cash_limit = row["cat4_cash_limit"]
      t.cat5 = row["cat5"]
      t.cat5_cashback = row["cat5_cashback"]
      t.cat5_cash_limit = row["cat5_cash_limit"]
      t.cat6 = row["cat6"]
      t.cat6_cashback = row["cat6_cashback"]
      t.cat6_cash_limit = row["cat6_cash_limit"]
      t.network = row["network"]
      t.no_of_cats = row["no_of_cats"]
      t.providor = row["providor"]
      t.image = row["image"]

      t.save(:validate => false)
      puts "#{t.card_name}, #{t.cashback} saved"
    end

    puts "There are now #{Card.count} rows in the transactions table"
  end

end
