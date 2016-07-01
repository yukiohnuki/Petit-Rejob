class SelectionStatus < ActiveRecord::Base

  def display
  	@selection_statuses = SelectionStatus.all

  	if id == 1
  	  @selection_statuses = SelectionStatus.where(id: [2,4])
  	elsif id == 2
  	  @selection_statuses = SelectionStatus.where(id: [3,4])
  	elsif id == 3
  	  @selection_statuses = SelectionStatus.where(id: 3)
  	elsif id == 4
  	  @selection_statuses = SelectionStatus.where(id: 4)
  	else
  	  @selection_statuses = SelectionStatus.where(id: 5)
  	end
  end
end