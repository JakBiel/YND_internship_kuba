
namespace :export do
  desc "Prints Project.all, To_do_list.all, Task.all, Comments.all in a seeds.rb way."

  task :seeds_format => :environment do
    Project.order(:id).all.each do |project|
      puts "Project.create(#{project.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  task :seeds_format => :environment do
    ToDoList.order(:id).all.each do |to_do_list|
      puts "To_do_list.create(#{to_do_list.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  task :seeds_format => :environment do
    Task.order(:id).all.each do |task|
      puts "Task.create(#{task.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  task :seeds_format => :environment do
    Comment.order(:id).all.each do |comment|
      puts "Comment.create(#{comment.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
