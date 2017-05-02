class OperationsController < ApplicationController
  def square

    @number = params["number"].to_f
    @output = @number * @number

    render("operations/square.html.erb")

  end

  def square_root
    @number = params["number"].to_f
    @output = Math.sqrt(@number)

    render("operations/square_root.html.erb")
  end

  def payment
    @basis_points = params["basis_points"].to_f
    @r = @basis_points.to_f / 10000 / 12 # convers basis points to monthly APR as decimal
    @years = params["number_of_years"].to_f
    @n = @years * 12 # convert years to number of months
    @pv = params["present_value"].to_f

    @output = (@r*@pv*(1+@r)**@n)/((1+@r)**@n - 1)

    render("operations/payment.html.erb")
  end

  def random
    @minimum = params["minimum"].to_i
    @maximum = params["maximum"].to_i

    @output = rand(@minimum...@maximum)

    render("operations/random.html.erb")
  end

  def square_new
    render("operations/square_new.html.erb")
  end

  def square_results
    @number = params["user_number"].to_f
    @output = @number * @number

    render("operations/square.html.erb")
  end
  
  def square_root_new
    render("operations/square_root_new.html.erb")
  end

  def square_root_results
    @number = params["user_number"].to_f
    @output = Math.sqrt(@number)

    render("operations/square_root.html.erb")
  end
end
