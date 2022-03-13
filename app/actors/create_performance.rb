class CreatePerformance < Actor
  input :params
  input :user

  output :object

  def call
    params[:exercise_id] = exercise.id if params[:movement_id].present?

    self.object = Performance.new(params.merge(user:))

    fail!(error: 'Could not create performance') unless object.save
  end

  private

  def exercise
    movement = Movement.find(params.delete(:movement_id))
    sets = params.delete(:sets)
    repetitions = params.delete(:repetitions)

    Exercise.find_or_create_by(movement:, sets:, repetitions:)
  end
end
