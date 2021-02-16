# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

if Rails.env.development?
  Rake::Task['yarn:install'].clear
  namespace :yarn do
    desc "Override yarn:install. Don't do anything!"
    task :install => [:environment] do
      puts "(Rails would invoke yarn:install here, we are bypassing.)"
    end
  end
  
  Rake::Task['webpacker:yarn_install'].clear
  namespace :webpacker do
    desc "Overridden webpacker:yarn_install. Don't do anything!"
    task :yarn_install => [:environment] do
      puts "(Rails would invoke webpacker:yarn_install here, we are bypassing.)"
    end
  end
end
