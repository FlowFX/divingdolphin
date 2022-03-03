class ExercisesController < ApplicationController
  before_action :set_exercise, only: %i[show edit update destroy]

  def index
    @exercises = Exercise.all
  end

  def show; end

  def new
    @exercise = Exercise.new
  end

  def edit; end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to exercise_url(@exercise), notice: 'Exercise was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to exercise_url(@exercise), notice: 'Exercise was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercise.destroy

    redirect_to exercises_url, notice: 'Exercise was successfully destroyed.'
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:movement_id, :sets, :repetitions)
  end
end
