namespace :db do 
  desc "Fires up an IRB console"
  task :irb => :environment do 
    require "irb"
    Post.destroy_all
    ARGV.clear
    IRB.start
  end 

  desc "Fires up a Pry console"
  task :pry => :environment do 
    Post.destroy_all
    binding.pry
  end
end