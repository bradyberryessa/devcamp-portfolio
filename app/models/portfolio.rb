class Portfolio < ApplicationRecord
#validates_presence_of is a rails method that doesn't allow empty field entries within a title, body, main_image, and thumb_image
  validates_presence_of :title, :body, :main_image, :thumb_image

#both of these are accomplish the same thing but one just uses a method to call and the other uses the scope method. Both can be tagged on to Portfolio#scope to the portfolios_controller
  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end
end