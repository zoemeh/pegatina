class HomeController < ApplicationController
  def index
    @paste = Paste.new
    @pastes = Paste.order(created_at: :desc).limit(100).all
  end
end
