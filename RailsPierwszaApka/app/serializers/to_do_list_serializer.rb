class ToDoListSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :completed_tasks, :all_tasks

  #has_many :tasks

  def completed_tasks
    Task.where(done_status: true, to_do_list_id: object.id).all.count
  end

  def all_tasks
    Task.where(to_do_list_id: object.id).all.count
  end

  #def as_json(options={})
  #  super(only: [:id, :name, :project_id, :completed_tasks, :all_tasks])
  #end

end
