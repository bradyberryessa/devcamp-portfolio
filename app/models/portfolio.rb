class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
#validates_presence_of is a rails method that doesn't allow empty field entries within a title, body, main_image, and thumb_image
  validates_presence_of :title, :body, :main_image, :thumb_image

  mount_uploader :thumb_image, PortfolioUploader 
  mount_uploader :main_image, PortfolioUploader 

#both of these are accomplish the same thing but one just uses a method to call and the other uses the scope method. Both can be tagged on to Portfolio#scope to the portfolios_controller
  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end