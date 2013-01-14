# Generated by generate-specs
require 'helper'

describe_moneta "cache_file_memory" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'cache_file_memory.log'), 'a')
  end

  def new_store
    Moneta.build do
      use(:Cache) do
        backend { adapter :File, :dir => File.join(make_tempdir, "cache_file_memory") }
        cache { adapter :Memory }
      end
    end
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'increment'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returnsame_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it 'stores loaded values in cache' do
    store.backend['foo'] = 'bar'
    store.cache['foo'].should be_nil
    store['foo'].should == 'bar'
    store.cache['foo'].should == 'bar'
    store.backend.delete('foo')
    store['foo'].should == 'bar'
    store.delete('foo')
    store['foo'].should be_nil
  end

end
