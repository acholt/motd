require 'spec_helper'

describe 'motd::knife-status' do
  let(:chef_run) { ChefSpec::Runner.new(step_into: ['motd']).converge(described_recipe) }

  it 'adds a Chef handler' do
    expect(chef_run).to create_template('/var/chef/handlers/knife_status.rb').with(
      mode: 00644,
    )
  end

  it 'enables Motd::KnifeStatus as a Chef handler' do
    expect(chef_run).to enable_chef_handler('Motd::KnifeStatus')
  end
end
