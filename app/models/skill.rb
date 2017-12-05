class Skill < ApplicationRecord
  #validates_presence_of is a rails method that doesn't allow empty field entries within a title and percent utilized
  validates_presence_of :title, :percent_utilized
end
