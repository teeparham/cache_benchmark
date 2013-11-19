class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    load_cats
  end

private

  def load_cats
    @cats = Cat.limit(100)
  end
end
