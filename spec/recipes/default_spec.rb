require 'spec_helper'

describe 'et_motd::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  %w(cow knife-status).each do |recipe|
    it "includes the `#{recipe}` recipe" do
      expect(chef_run).to include_recipe "et_motd::#{recipe}"
    end
  end
end
