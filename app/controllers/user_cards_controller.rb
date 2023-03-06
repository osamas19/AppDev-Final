class UserCardsController < ApplicationController
  def index
    matching_user_cards = UserCard.all

    @list_of_user_cards = matching_user_cards.order({ :created_at => :desc })

    render({ :template => "user_cards/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_cards = UserCard.where({ :id => the_id })

    @the_user_card = matching_user_cards.at(0)

    render({ :template => "user_cards/show.html.erb" })
  end

  def create
    the_user_card = UserCard.new
    #store last 4 digits
    the_user_card_number = params.fetch("query_card_4_digits")
    the_user_card.card_4_digits = the_user_card_number.split(//).last(4).join
    the_user_card.validity = params.fetch("query_validity")
    the_user_card.name_as_shown = params.fetch("query_name_as_shown")
    the_user_card.user_id = session.fetch(:user_id)
    the_user_card.card_id = params.fetch("query_card_id")

    #Validate credit card doesn't exit already 
    if UserCard.where(:user_id => the_user_card.user_id, :card_id => the_user_card.card_id).present?
      redirect_to("/user_cards", { :notice => "Credit card already exist in your wallet." })
    else
      #Calidate credit card
      if the_user_card.valid?
        the_user_card.save
        redirect_to("/", { :notice => "Credit card added successfully." })
      else
        redirect_to("/user_cards", { :alert => the_user_card.errors.full_messages.to_sentence })
      end
    end
  end

  #def update
  #  the_id = params.fetch("path_id")
  #  the_user_card = UserCard.where({ :id => the_id }).at(0)

  #  the_user_card.card_4_digits = params.fetch("query_card_4_digits")
  #  the_user_card.validity = params.fetch("query_validity")
  #  the_user_card.name_as_shown = params.fetch("query_name_as_shown")
  #  the_user_card.user_id = params.fetch("query_user_id")
  #  the_user_card.card_id = params.fetch("query_card_id")

  #  if the_user_card.valid?
  #    the_user_card.save
  #    redirect_to("/user_cards/#{the_user_card.id}", { :notice => "User card updated successfully."} )
  #  else
  #    redirect_to("/user_cards/#{the_user_card.id}", { :alert => the_user_card.errors.full_messages.to_sentence })
  #  end
  #end

  def destroy
    the_id = params.fetch("path_id")
    the_user_card = UserCard.where({ :id => the_id }).at(0)

    the_user_card.destroy

    redirect_to("/", { :notice => "User card deleted successfully."} )
  end
end
