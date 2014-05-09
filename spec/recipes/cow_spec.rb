require 'spec_helper'

describe 'motd::cow' do
  let(:chef_run) { ChefSpec::Runner.new(step_into: ['motd']).converge(described_recipe) }

  it 'adds a cow motd template through `motd`' do
    expect(chef_run).to create_template('/etc/motd').with(
      user: 'root',
      group: 'root',
      mode: '0644',
    )
  end
end
