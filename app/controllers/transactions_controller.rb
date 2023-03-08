class TransactionsController < ApplicationController

  def index
    the_user_id = session.fetch(:user_id)
    matching_transactions = Transaction.where({ :user_id => the_user_id })

    @list_of_transactions = matching_transactions.order({ :created_at => :desc })

    render({ :template => "transactions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_transactions = Transaction.where({ :id => the_id })

    @the_transaction = matching_transactions.at(0)

    render({ :template => "transactions/show.html.erb" })
  end

  def create
    the_transaction = Transaction.new
    the_transaction.merchant_name = params.fetch("query_merchant_name")
    the_transaction.amount = params.fetch("query_amount")
    the_transaction.cashback = params.fetch("query_cashback")
    the_transaction.user_id = session.fetch(:user_id)
    the_transaction.user_card_id = params.fetch("query_user_card_id")
    the_transaction.location = params.fetch("query_location")

    if the_transaction.valid?
      the_transaction.save
      redirect_to("/transactions", { :notice => "Transaction created successfully." })
    else
      redirect_to("/transactions", { :alert => the_transaction.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_transaction = Transaction.where({ :id => the_id }).at(0)

    the_transaction.destroy

    redirect_to("/transactions", { :notice => "Transaction deleted successfully."} )
  end
end
