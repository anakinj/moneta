# Generated by generate-specs
require 'helper'

describe_moneta "transformer_quicklz" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'transformer_quicklz.log'), 'a')
  end

  def new_store
    Moneta.build do
      use :Transformer, :value => :quicklz
      adapter :Memory
    end
  end

  def load_value(value)
    ::QuickLZ.decompress(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'increment'
  it_should_behave_like 'null_objectkey_stringvalue'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_hashkey_stringvalue'
  it_should_behave_like 'null_booleankey_stringvalue'
  it_should_behave_like 'null_nilkey_stringvalue'
  it_should_behave_like 'null_integerkey_stringvalue'
  it_should_behave_like 'returndifferent_objectkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_hashkey_stringvalue'
  it_should_behave_like 'returndifferent_booleankey_stringvalue'
  it_should_behave_like 'returndifferent_nilkey_stringvalue'
  it_should_behave_like 'returndifferent_integerkey_stringvalue'
  it_should_behave_like 'store_objectkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_hashkey_stringvalue'
  it_should_behave_like 'store_booleankey_stringvalue'
  it_should_behave_like 'store_nilkey_stringvalue'
  it_should_behave_like 'store_integerkey_stringvalue'
  it_should_behave_like 'transform_value'
  it 'compile transformer class' do
    store.should_not be_nil
    Moneta::Transformer::QuicklzValue.should_not be_nil
  end
end
