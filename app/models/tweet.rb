class Tweet < ApplicationRecord
  after_create_commit :broadcast_to_room
  after_create_commit { broadcast_prepend_to :tweets }
  after_update_commit { broadcast_replace_to :tweets }
  after_destroy_commit { broadcast_remove_to :tweets }

  belongs_to :room

  has_many_attached :images
  has_rich_text :content

  private

  def broadcast_to_room
    room = self.room
    broadcast_append_to "room-#{room.id}"
  end
end
