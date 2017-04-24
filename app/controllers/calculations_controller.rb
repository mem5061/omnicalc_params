class CalculationsController < ApplicationController
def flexible_square

@the_number = params["num"].to_f
# .to_f converts to a number, so you can square it later
    render("calculations/flexible_square.html.erb")

end

def flexible_square_root

  @the_number = params["num"].to_f
  # .to_f converts to a number, so you can square it later
      render("calculations/flexible_square_root.html.erb")
end

def flexible_random

  @first_number = params["range_start"].to_f
  @second_number = params["range_end"].to_f
    render("calculations/flexible_random.html.erb")
end

def square_form
  render("calculations/square_form.html.erb")

end

def square_results

@user_number = params[:user_number].to_f
  render("calculations/square_results.html.erb")

end


end
