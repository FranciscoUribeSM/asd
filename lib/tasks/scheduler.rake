

task :bonus => :environment do
    User.daily_bonus
    puts "HOLA"
end