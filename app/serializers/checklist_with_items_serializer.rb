class ChecklistWithItemsSerializer < ActiveModel::Serializer
  attributes :id, :name, :updated_at

  has_many :checklist_items
end
