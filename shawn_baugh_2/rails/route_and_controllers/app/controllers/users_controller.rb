class UsersController < ApplicationController
  def index

  end
  def hello
      render "hello/hello"
  end
  def say_hello
      render "say_hello/say_hello"
  end
  def say_hello_joe
      render "say_hello_joe/say_hello_joe"
  end
  def say_hello_michael
      redirect_to "/say/hello/joe"
  end
  def times
      if session[:count]
          session[:count] += 1
      else
          session[:count] = 0
      end
      render 'times/times'
  end
  def times_restart
      session[:count] = 0
      render 'times_restart/times_restart'
  end
end
