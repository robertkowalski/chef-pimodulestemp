require 'chefspec'

describe '' do
  let (:chef_run) do
    ChefSpec::ChefRunner.new do |node|

    end.converge('pimodulestemp::default')
  end

  it 'converges' do
    expect(chef_run).to be
  end
end