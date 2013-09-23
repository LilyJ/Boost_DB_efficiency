task :update_karma_level => :environment do
  User.all.each do |user|
    user.update_attribute(:karma_level, user.total_karma)
    puts "Processed user number #{user.id}" if user.id % 1000 == 0  
  end  
end

