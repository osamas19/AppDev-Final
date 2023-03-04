result = Array.new
result.push("3355")
result.push("5411")
result_array = Array.new

result.each do |a_category|
  Card.all.each do |a_card|
    number_of_cartegories = a_card.no_of_cats
    if number_of_cartegories == 999
      the_cashback = a_card.cashback
      the_card = a_card.card_name
    elsif a_category = a_card.cat1
      the_cashback = a_card.cat1_cashback
      the_card = a_card.card_name
      the_category = a_card.cat1
    elsif a_category = a_card.cat2
      the_cashback = a_card.cat2_cashback
      the_card = a_card.card_name
      the_category = a_card.cat2
    elsif a_category = a_card.cat3
      the_cashback = a_card.cat3_cashback
      the_card = a_card.card_name
      the_category = a_card.cat3
    elsif a_category = a_card.cat4
      the_cashback = a_card.cat4_cashback
      the_card = a_card.card_name
      the_category = a_card.cat4
    elsif a_category = a_card.cat5
      the_cashback = a_card.cat5_cashback
      the_card = a_card.card_name
      the_category = a_card.cat5
    elsif a_category = a_card.cat6
      the_cashback = a_card.cat6_cashback
      the_card = a_card.card_name
      the_category = a_card.cat6
    
    else 
      the_cashback = a_card.cashback
      the_card = a_card.card_name        
    end
    card_result = Hash.new
    card_result.store(:cashbak, the_cashback)
    card_result.store(:card_name, the_card)
    card_result.store(:category, the_category)
    result_array.push(card_result)
  end

end
p result_array
maximum_cashback = result_array.max_by { |hash| hash[:cashbak] }[:cashbak]
selected_card = result_array.max_by { |hash| hash[:cashbak] }[:card_name]
selected_cat = result_array.max_by { |hash| hash[:cashbak] }[:category]

p maximum_cashback
p selected_card
p selected_cat
