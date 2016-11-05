class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @num = params[:num]
    sqr = @num.to_i**2
    @sqr = sqr.round(0)
    render("square.html.erb")
  end

  def square_root
    @num = params[:num]
    sqrt = @num.to_i**0.5
    @sqrt = sqrt.round(2)
    render("square_root.html.erb")
  end

  def random
    @upper = params[:upper]
    @lower = params[:lower]
    diff = @upper.to_i - @lower.to_i
    @rand = @lower.to_i + rand(diff).to_i
    render("random.html.erb")
  end

  def payment
    @interest = params[:interest].to_f/100
    @term = params[:term].to_i
    @principal = params[:principal].to_f.round(0)

    mnthly_int = @interest/1200
    term_mnths = @term*12
    pmt = @principal*mnthly_int/(1-(1/(1+mnthly_int))**term_mnths)
    @payment = pmt.round(2)

    render("payment.html.erb")

  end

end
