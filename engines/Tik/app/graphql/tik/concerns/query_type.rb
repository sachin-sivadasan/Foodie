module Tik
  module Concerns
    module QueryType
      extend ActiveSupport::Concern

      included do
        field :test_field2, String, null: false,
                             description: "An example field added by the generator"

        # field :dox_documents_for_holder, Types::DoxDocument.connection_type, null: true do
        #   argument :holdable_id, String, required: true
        #   argument :types, [String], required: false

        #   authorize_current_user
        #   can_action? :read, Dox::Document
        # end
      end

      def test_field2
        "Hello World!!!!"
      end

    end
  end
end
