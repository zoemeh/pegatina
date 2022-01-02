class HomeController < ApplicationController
  def index
    @paste = Paste.new
    @pastes = Paste.order(created_at: :desc).limit(20)
  end

  def about

  end
end
