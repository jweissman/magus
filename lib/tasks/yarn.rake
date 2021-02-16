# Remove yarn install tasks as dependencies.
if Rake::Task.task_defined?('assets:precompile')
  task = Rake::Task['assets:precompile']
  task.prerequisites.delete('webpacker:yarn_install')
  task.prerequisites.delete('yarn:install')
end
