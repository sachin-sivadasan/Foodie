module Tik
  module Concerns
    module MutationType
      extend ActiveSupport::Concern

      included do
        # field :dox_unlink_document, mutation: Mutations::UnlinkDocument, null: true
        field :test_field3         , String                             , null: false,
                                 description: "An example field added by the generator"

      end

      def test_field3
        "Hello Worlddddd"
      end

    end
  end
end
