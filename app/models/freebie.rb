class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev
    # don't need to code anything (f.company ,f.dev should return whatever you need)

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end


end
