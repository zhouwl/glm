class Diary < ActiveRecord::Base
  has_attached_file :media, :styles => { :medium => "450x300", :thumb => "150x100" }
end