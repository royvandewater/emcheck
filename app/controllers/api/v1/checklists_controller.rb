class Api::V1::ChecklistsController < Api::V1::ApiController
  before_filter :find_checklist, :except => [:index, :create]

  def index
    respond_with Checklist.all
  end

  def create
    respond_with Checklist.create checklist_params
  end

  def show
    respond_with @checklist
  end

  def update
    respond_with @checklist.update_attributes checklist_params
  end

  def destroy
    respond_with @checklist.destroy
  end

  protected
  def find_checklist
    @checklist = Checklist.find params[:id]
  end

  def checklist_params
    {
      :name => params[:name],
    }
  end

  def checklist_url(checklist)
    api_v1_checklists_path checklist
  end
end
