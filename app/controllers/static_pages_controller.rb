class StaticPagesController < ApplicationController
  def top
  	@entries = Entry.all
  	@jobs = Job.all
  	@users = User.all
  end

end
