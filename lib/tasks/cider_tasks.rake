namespace :db do
  desc 'Load ciders - seeds that has version like migrations thus loaded once.'
  task :cider => :environment do
    quietly do
      ::Cider::Migration.up
    end
    ::Cider.load
  end

  task :reset_cider => :environment do
    ::Cider::Migration.down
  end
end
