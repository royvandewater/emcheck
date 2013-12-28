class window.Path
  @nothing: => '/#'

  @checklist: (checklist) => "#checklists/#{checklist.id}"
  @checklists: => '#'
  @new_checklist: => '#checklists/new'

  @new_checklist_item: (checklist) => "#checklists/#{checklist.id}/checklist_items/new"
