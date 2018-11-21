namespace :tasks do 
    desc "Esta tarea se "
    task :give_money => :environmet do
        User.all.each do |player|
            player.get_priza(22)
        end
    end
end 