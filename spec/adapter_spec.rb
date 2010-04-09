require 'spec_helper'

require 'dm-migrations'

require 'dm-core/spec/adapter_shared_spec'
require 'dm-do-adapter/spec/shared_spec'

describe 'DataMapper::Adapters::SqlserverAdapter' do

  before :all do
    @adapter    = DataMapper.setup(:default, 'sqlserver://dm_core_test:dm_core_test@localhost/dm_core_test;instance=SQLEXPRESS')
    @repository = DataMapper.repository(@adapter.name)
  end
  
  it_should_behave_like "An Adapter"
  it_should_behave_like "A DataObjects Adapter"

end
