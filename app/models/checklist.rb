class Checklist < ActiveRecord::Base
  has_many :checklist_items

  validates :name, :presence => true
end
