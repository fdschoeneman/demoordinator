namespace 'db:development' do

  desc "Create working objects in development db"

  task :create_objects do
    Rake.application.in_namespace('db:development:create') do |x|
      x.tasks.each do |task|
        actual = task.name.split(":").last.classify.constantize.count
        desired = eval("@"+ task.name.split(":").last)
        puts green(task.name)

        if desired.nil? || desired > actual
          task.invoke
        end
      end
    end
  end
end

