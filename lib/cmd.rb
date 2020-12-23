# frozen_string_literal: true

# From https://github.com/github/graphql-client
# For Readme Example, convert this to a test unit mock (the one with the real db)
require 'graphql/client'
require 'graphql/client/http'
require 'json'

module CMD
  HTTP = GraphQL::Client::HTTP.new('https://lyrical-kollab.hasura.app/v1/graphql') do
    def headers(_context)
      { "User-Agent": 'lltv-cmd' }
    end
  end

  # Fetch latest schema on init, this will make a network request
  Schema = GraphQL::Client.load_schema(HTTP)

  # However, it's smart to dump this to a JSON file and load from disk
  #
  # Run it from a script or rake task
  #   GraphQL::Client.dump_schema(SWAPI::HTTP, "path/to/schema.json")
  #
  # Schema = GraphQL::Client.load_schema("path/to/schema.json")

  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end

module CmdResponse
  Query = CmdResponseQuery = CMD::Client.parse <<-'GRAPHQL'
  query {
    cmd {
      id
      cmd
      response
    }
  }
  GRAPHQL
end

result = CMD::Client.query(CmdResponse::Query)

puts result.data.to_json
