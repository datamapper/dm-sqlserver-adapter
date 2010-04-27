require 'dm-sqlserver-adapter'
require 'dm-core/spec/setup'

module DataMapper
  module Spec
    module Adapters

      class SqlserverAdapter < Adapter
        def connection_uri
          "#{super};instance=SQLEXPRESS"
        end
      end

      use SqlserverAdapter

    end
  end
end
