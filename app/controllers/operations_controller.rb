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

end
