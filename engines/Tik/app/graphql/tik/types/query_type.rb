module Tik
  module Types
    class QueryType < Types::BaseObject
      # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
      include GraphQL::Types::Relay::HasNodeField
      include GraphQL::Types::Relay::HasNodesField
      include Concerns::QueryType

      # Add root-level fields here.
      # They will be entry points for queries on your schema.

      # TODO: remove me
      field :test_field2, String, null: false,
                             description: "An example field added by the generator"

      def test_field
        "Hello World!"
      end
    end
  end
end
