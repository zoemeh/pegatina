class HomeController < ApplicationController
  def index
    @paste = Paste.new
  end

  def about
  end

  def recent
    @pastes = Paste.order(created_at: :desc).limit(20)
  end
end
