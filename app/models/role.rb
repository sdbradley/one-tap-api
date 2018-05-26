class Role < ApplicationRecord
    def to_h
        {
          id: id,
          name: name
        }
      end
end
