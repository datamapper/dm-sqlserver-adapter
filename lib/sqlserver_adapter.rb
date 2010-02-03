require 'do_sqlserver'
require 'data_objects_adapter'

dir = Pathname(__FILE__).dirname.expand_path / 'sqlserver_adapter'

require dir / 'adapter'
