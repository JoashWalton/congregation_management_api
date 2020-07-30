# frozen_string_literal: true

# Based this concern on this suggestion:
# https://medium.com/@heyamberwilkie/model-helpers-in-rails-concerns-6f5db8d0a59e

module PublicTalkConcern
  extend ActiveSupport::Concern 

  class_methods do 

    # Synchronize database talks with current branch data(s-99, s-99-E)
    def synchronize_talk_database

    end

  end
end