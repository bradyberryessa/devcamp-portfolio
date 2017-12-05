class Skill < ApplicationRecord
  include Placeholder
  #validates_presence_of is a rails method that doesn't allow empty field entries within a title and percent utilized
  validates_presence_of :title, :percent_utilized

    after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
