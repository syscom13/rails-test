class PagesController < ApplicationController
  def home
    @today = Date.today
  end

  def team
    @team = ["Nicolas", "Romain", "Sebastien"]
  end

  def about
  end
end
