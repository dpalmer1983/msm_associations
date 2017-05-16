class Director < ApplicationRecord

  # name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob }

  # dob: no rules
  # bio: no rules
  # image_url: no rules

  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")

  has_many(:movies, :class_name => "Movie", :foreign_key => "director_id")
  has_many(:movie, :class_name => "Movie", :foreign_key => "director_id")
  
end
