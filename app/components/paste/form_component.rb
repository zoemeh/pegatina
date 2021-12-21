# frozen_string_literal: true

class Paste::FormComponent < ViewComponent::Base
  def initialize(paste: Paste.new)
    @paste = paste
  end
end
