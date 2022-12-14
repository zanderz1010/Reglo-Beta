Rails.application.routes.draw do



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

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Where to buy resource:

  # CREATE
  post("/insert_where_to_buy", { :controller => "where_to_buys", :action => "create" })
          
  # READ
  get("/where_to_buys", { :controller => "where_to_buys", :action => "index" })
  
  get("/where_to_buys/:path_id", { :controller => "where_to_buys", :action => "show" })
  
  # UPDATE
  
  post("/modify_where_to_buy/:path_id", { :controller => "where_to_buys", :action => "update" })
  
  # DELETE
  get("/delete_where_to_buy/:path_id", { :controller => "where_to_buys", :action => "destroy" })

  #------------------------------

  # Routes for the Store resource:

  # CREATE
  post("/insert_store", { :controller => "stores", :action => "create" })
          
  # READ
  get("/stores", { :controller => "stores", :action => "index" })
  
  get("/stores/:path_id", { :controller => "stores", :action => "show" })
  
  # UPDATE
  
  post("/modify_store/:path_id", { :controller => "stores", :action => "update" })
  
  # DELETE
  get("/delete_store/:path_id", { :controller => "stores", :action => "destroy" })

  #------------------------------

  # Routes for the Gift resource:

  # CREATE
  post("/insert_gift", { :controller => "gifts", :action => "create" })
          
  # READ
  get("/gifts", { :controller => "gifts", :action => "index" })
  
  get("/gifts/:path_id", { :controller => "gifts", :action => "show" })
  
  # UPDATE
  
  post("/modify_gift/:path_id", { :controller => "gifts", :action => "update" })
  
  # DELETE
  get("/delete_gift/:path_id", { :controller => "gifts", :action => "destroy" })

  #------------------------------

end
