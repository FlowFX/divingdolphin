class PerformancesController < ApplicationController
  def index
    @performances = Performance.all
  end

  def new
    @performance = Performance.new
  end
end
