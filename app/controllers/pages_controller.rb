class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @today = Date.today
  end

  def team
    @team = ["Nicolas", "Romain", "Sebastien"]
  end

  def about
  end
end
