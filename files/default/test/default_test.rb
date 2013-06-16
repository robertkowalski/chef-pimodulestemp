require 'minitest/spec'

describe_recipe 'pimodulestemp::default' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  config_file = '/etc/modules'

  it 'should add w1-therm to the config file' do
    file(config_file).must_include('w1-therm')
  end

  it 'should add w1-gpio to the config file' do
    file(config_file).must_include('w1-gpio')
  end
end