# Generated by generate-specs
require 'helper'

describe_moneta "adapter_fog" do
  require 'fog'
  Fog.mock!
  def features
    []
  end

  def new_store
    Moneta::Adapters::Fog.new(:aws_access_key_id => 'fake_access_key_id',
        :aws_secret_access_key  => 'fake_secret_access_key',
        :provider               => 'AWS',
        :dir                    => 'moneta')
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'features'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_create'
  it_should_behave_like 'not_increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returnsame_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_large'
end
