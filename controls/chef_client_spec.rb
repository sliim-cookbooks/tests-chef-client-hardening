# -*- coding: utf-8 -*-

title 'Chef Client config'

only_if do
  command('chef-client').exist?
end

%w(client.rb client.pem encrypted_data_bag_secret).each do |file|
  control "chef-client-#{file}" do
    impact 1.0
    title "Check #{file} owner, group and permissions."
    desc "The #{file} file should owned by root, only be readable by owner."

    describe file("/etc/chef/#{file}") do
      it { should exist }
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should_not be_executable }
      it { should be_readable.by('owner') }
      it { should_not be_readable.by('group') }
      it { should_not be_readable.by('other') }
      it { should be_writable.by('owner') }
      it { should_not be_writable.by('group') }
      it { should_not be_writable.by('other') }
    end
  end
end
