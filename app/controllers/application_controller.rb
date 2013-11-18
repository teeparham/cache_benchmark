class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    load_monkeys
  end

private

  def load_monkeys
    @monkeys = Monkey.limit(100)
  end
end
