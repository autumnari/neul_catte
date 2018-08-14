class Music < ApplicationRecord
  belongs_to :fantastic, :polymorphic => true
end
