class Room < ApplicationRecord
  has_many :tweets

  after_create_commit { broadcast_prepend_to :rooms }
  after_update_commit { broadcast_replace_to :tweets }
  after_destroy_commit { broadcast_remove_to :tweets }

end
