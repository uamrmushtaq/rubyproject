class Resume < ApplicationRecord
    mount_uploader :attachment , AttachmentUploader # Tells rails to use this uploader for this model
    validates :name, presence: true
end

# Use Active Storage variant