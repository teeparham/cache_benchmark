class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    load_cats
  end

private

  def load_cats
    @cats = Cat.limit(100)
  end
end
