class User < ApplicationRecord

    has_many :articles
    
    def self.daily_bonus
        self.transaction do 
            all.each do |player|
                player.age += 22
                player.save
            end
        end 
    end
end
