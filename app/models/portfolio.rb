class Portfolio < ApplicationRecord
#validates_presence_of is a rails method that doesn't allow empty field entries within a title, body, main_image, and thumb_image
validates_presence_of :title, :body, :main_image, :thumb_image
end
