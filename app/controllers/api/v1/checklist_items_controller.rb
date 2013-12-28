class Api::V1::ChecklistItemsController < Api::V1::ApiController
  before_filter :find_checklist_item, :except => [:index, :create]

  def index
    respond_with ChecklistItem.all
  end

  def create
    respond_with ChecklistItem.create checklist_item_params
  end

  def show
    respond_with @checklist_item
  end

  def update
    respond_with @checklist_item.update_attributes checklist_item_params
  end

  def destroy
    respond_with @checklist_item.destroy
  end

  protected
  def find_checklist_item
    @checklist_item = ChecklistItem.find params[:id]
  end

  def checklist_item_params
    {
      :checklist_id => params[:checklist_id],
      :name         => params[:name],
      :price        => params[:price],
    }
  end

  def checklist_item_url(checklist_item)
    api_v1_checklist_items_path checklist_item
  end
end
