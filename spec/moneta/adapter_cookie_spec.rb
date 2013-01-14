# Generated by generate-specs
require 'helper'

describe_moneta "adapter_cookie" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'adapter_cookie.log'), 'a')
  end

  def new_store
    Moneta::Adapters::Cookie.new
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'increment'
  it_should_behave_like 'not_persist'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'returnsame_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
end
