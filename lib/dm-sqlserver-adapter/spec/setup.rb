require 'dm-sqlserver-adapter'
require 'dm-core/spec/setup'

module DataMapper
  module Spec
    module Adapters

      class SqlserverAdapter < Adapter
        def connection_uri
          if instance_name.size > 0
            "#{super};instance=#{instance_name}"
          else
            super
          end
        end

        def instance_name
          ENV.fetch('DM_DB_SQLSERVER_INSTANCE', 'SQLEXPRESS')
        end
      end

      use SqlserverAdapter

    end
  end
end
