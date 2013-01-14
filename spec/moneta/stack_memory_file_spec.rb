# Generated by generate-specs
require 'helper'

describe_moneta "stack_memory_file" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'stack_memory_file.log'), 'a')
  end

  def new_store
    Moneta.build do
      use(:Stack) do
        add(Moneta.new(:Null))
        add(Moneta::Adapters::Null.new)
        add { adapter :Memory }
        add { adapter :File, :dir => File.join(make_tempdir, "stack_memory_file") }
      end
    end
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returnsame_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
end
