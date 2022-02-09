class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        if self.freebies.find_by(item_name: item_name) == nil
            return false
        else
            return true
        end
    end

    def give_away(dev,freebie)
        if(self.freebies.find(freebie.id))
            freebie.dev = dev
        end
    end



end
