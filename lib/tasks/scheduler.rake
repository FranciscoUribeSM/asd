namespace :tasks do 
    desc "Esta tarea se "
    task :give_money => :environmet do
            User.daily_bonus
    end
end 