class Tweet < ApplicationRecord
  after_create_commit { broadcast_prepend_to :tweets }
  after_update_commit { broadcast_replace_to :tweets }
  after_destroy_commit { broadcast_remove_to :tweets }

  has_many_attached :images
  has_rich_text :content
end
