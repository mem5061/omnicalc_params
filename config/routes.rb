Rails.application.routes.draw do

get("/flexible/square/:num", {
  :controller => "calculations", :action => "flexible_square" })

  get("/flexible/square_root/:num", {
    :controller => "calculations", :action => "flexible_square_root" })

    get("/flexible/random/:range_start/:range_end", {
      :controller => "calculations", :action => "flexible_random" })

      get("/square/new", {
        :controller => "calculations", :action => "square_form" })

        get("/square/results", {
          :controller => "calculations", :action => "square_results" })
end
