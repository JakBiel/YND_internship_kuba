class ToDoListSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :completed_tasks, :all_tasks

  #has_many :tasks

  def completed_tasks
    Task.where(done_status: false, to_do_list_id: object.id).all.count
  end

  def all_tasks
    Task.where(to_do_list_id: object.id).all.count
  end

end
