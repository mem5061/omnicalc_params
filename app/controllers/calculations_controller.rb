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

def flexible_payment

    @apr = params[:apr].to_f/100
      @years = params[:number_of_years].to_i
      @principal = params[:principal].to_f
      @monthly_rate = ((@apr/100)/12)
      @number_of_pmts = @years*12

      @monthly_payment = @principal * ((@monthly_rate*(1+@monthly_rate)**@number_of_pmts)/(((1+@monthly_rate)**@number_of_pmts)-1))

        render("calculations/flexible_payment.html.erb")

end

def square_root_form
  render("calculations/square_root_form.html.erb")

end

def square_root_results

@user_number = params[:user_number].to_f
  render("calculations/square_root_results.html.erb")

end

def payment_form
  render("calculations/payment_form.html.erb")
end

def payment_results
@apr = params[:user_apr].to_f
  @years = params[:user_years].to_i
  @principal = params[:user_principal].to_f
  @monthly_rate = ((@apr/100)/12)
  @number_of_pmts = @years*12

  @monthly_payment = @principal * ((@monthly_rate*(1+@monthly_rate)**@number_of_pmts)/(((1+@monthly_rate)**@number_of_pmts)-1))

    render("calculations/payment_results.html.erb")

end

def random_form
  render("calculations/random_form.html.erb")

end

def random_results

@minimum = params[:user_minimum].to_f
@maximum = params[:user_maximum].to_f
    render("calculations/random_results.html.erb")

end


end
