# Generated by generate-specs
require 'helper'

describe_moneta "simple_memory_with_json_key_serializer" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'simple_memory_with_json_key_serializer.log'), 'a')
  end

  def new_store
    Moneta.new(:Memory, :key_serializer => :json, :logger => {:out => log})
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'increment'
  it_should_behave_like 'marshallable_value'
  it_should_behave_like 'not_persist'
  it_should_behave_like 'null_stringkey_objectvalue'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_stringkey_hashvalue'
  it_should_behave_like 'null_stringkey_booleanvalue'
  it_should_behave_like 'null_stringkey_nilvalue'
  it_should_behave_like 'null_stringkey_integervalue'
  it_should_behave_like 'null_hashkey_objectvalue'
  it_should_behave_like 'null_hashkey_stringvalue'
  it_should_behave_like 'null_hashkey_hashvalue'
  it_should_behave_like 'null_hashkey_booleanvalue'
  it_should_behave_like 'null_hashkey_nilvalue'
  it_should_behave_like 'null_hashkey_integervalue'
  it_should_behave_like 'null_integerkey_objectvalue'
  it_should_behave_like 'null_integerkey_stringvalue'
  it_should_behave_like 'null_integerkey_hashvalue'
  it_should_behave_like 'null_integerkey_booleanvalue'
  it_should_behave_like 'null_integerkey_nilvalue'
  it_should_behave_like 'null_integerkey_integervalue'
  it_should_behave_like 'returndifferent_stringkey_objectvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_hashvalue'
  it_should_behave_like 'returndifferent_hashkey_objectvalue'
  it_should_behave_like 'returndifferent_hashkey_stringvalue'
  it_should_behave_like 'returndifferent_hashkey_hashvalue'
  it_should_behave_like 'returndifferent_integerkey_objectvalue'
  it_should_behave_like 'returndifferent_integerkey_stringvalue'
  it_should_behave_like 'returndifferent_integerkey_hashvalue'
  it_should_behave_like 'store_stringkey_objectvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_hashvalue'
  it_should_behave_like 'store_stringkey_booleanvalue'
  it_should_behave_like 'store_stringkey_nilvalue'
  it_should_behave_like 'store_stringkey_integervalue'
  it_should_behave_like 'store_hashkey_objectvalue'
  it_should_behave_like 'store_hashkey_stringvalue'
  it_should_behave_like 'store_hashkey_hashvalue'
  it_should_behave_like 'store_hashkey_booleanvalue'
  it_should_behave_like 'store_hashkey_nilvalue'
  it_should_behave_like 'store_hashkey_integervalue'
  it_should_behave_like 'store_integerkey_objectvalue'
  it_should_behave_like 'store_integerkey_stringvalue'
  it_should_behave_like 'store_integerkey_hashvalue'
  it_should_behave_like 'store_integerkey_booleanvalue'
  it_should_behave_like 'store_integerkey_nilvalue'
  it_should_behave_like 'store_integerkey_integervalue'
  it_should_behave_like 'transform_value'
end
