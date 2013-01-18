module Cider
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/cider_tasks.rake'
    end
  end
end