namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Person.create!(:gender => 'm',
                    :weight => '175',
                    :height => '74')

    Person.create!(:gender => 'f',
                    :weight => '120',
                    :height => '66')
  end
end