namespace :db do
    require 'rubygems'
    require 'sequel'
    Sequel.extension :migration

    task :migrate do
        m = Sequel::Migrator
        db = Sequel.connect(ENV['HEROKU_SHARED_POSTGRESQL_YELLOW'] || 'postgres://localhost/mydb')
        m.run(db, '.')
    end
end