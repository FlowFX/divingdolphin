class PerformancesController < ApplicationController
  before_action :set_performance, only: %i[show edit update destroy]

  def index
    @performances = Performance.all
  end

  def new
    @performance = Performance.new
  end

  def create
    result = CreatePerformance.result(params: performance_params, user: current_user)

    @performance = result.object

    if result.success?
      redirect_to performance_url(@performance), notice: 'Performance was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:exercise_id, :movement_id, :sets, :repetitions, :date)
  end
end
