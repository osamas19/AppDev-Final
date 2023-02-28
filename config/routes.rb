Rails.application.routes.draw do



  # Routes for the Transaction resource:

  # CREATE
  post("/insert_transaction", { :controller => "transactions", :action => "create" })
          
  # READ
  get("/transactions", { :controller => "transactions", :action => "index" })
  
  get("/transactions/:path_id", { :controller => "transactions", :action => "show" })
  
  # UPDATE
  
  post("/modify_transaction/:path_id", { :controller => "transactions", :action => "update" })
  
  # DELETE
  get("/delete_transaction/:path_id", { :controller => "transactions", :action => "destroy" })

  #------------------------------

  # Routes for the User card resource:

  # CREATE
  post("/insert_user_card", { :controller => "user_cards", :action => "create" })
          
  # READ
  get("/user_cards", { :controller => "user_cards", :action => "index" })
  
  get("/user_cards/:path_id", { :controller => "user_cards", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_card/:path_id", { :controller => "user_cards", :action => "update" })
  
  # DELETE
  get("/delete_user_card/:path_id", { :controller => "user_cards", :action => "destroy" })

  #------------------------------

  # Routes for the Card resource:

  # CREATE
  post("/insert_card", { :controller => "cards", :action => "create" })
          
  # READ
  get("/cards", { :controller => "cards", :action => "index" })
  
  get("/cards/:path_id", { :controller => "cards", :action => "show" })
  
  # UPDATE
  
  post("/modify_card/:path_id", { :controller => "cards", :action => "update" })
  
  # DELETE
  get("/delete_card/:path_id", { :controller => "cards", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
