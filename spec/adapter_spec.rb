require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec', 'spec_helper'))

require 'dm-core/spec/adapter_shared_spec'
require 'data_objects_adapter/spec/data_objects_adapter_shared_spec'

describe DataMapper::Adapters::sqlserverAdapter do
  before :all do
    @adapter    = DataMapper.setup(:default, 'sqlserver://dm_core_test:dm_core_test@localhost/dm_core_test;instance=SQLEXPRESS')
    @repository = DataMapper.repository(@adapter.name)
  end
  
  it_should_behave_like "An Adapter"
  it_should_behave_like "A DataObjects Adapter"
end
