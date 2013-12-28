class ChecklistItem < ActiveRecord::Base
  belongs_to :checklist

  validates :checklist, :presence => true
  validates :name, :presence => true
  validates :price, :presence => true, :numericality => true
end
