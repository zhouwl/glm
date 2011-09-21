class TimeEpisode < ActiveRecord::Base
  has_attached_file :pic, :styles => { :medium => "256x256>", :thumb => "100x100>" }
end
