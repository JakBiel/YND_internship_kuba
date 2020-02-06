class ToDoListSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :completed_tasks

  has_many :tasks

  def completed_tasks
    instance_options[:without_serializer] ? object.task : TaskSerializer.new(object.task, done_status: true)
  end

end
