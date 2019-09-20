# frozen_string_literal: true

title 'Chef Client config'

only_if do
  command('chef-client').exist?
end

::Dir['/etc/chef/*'].each do |file|
  control "chef-client-#{file}" do
    impact 1.0
    title "Check #{file} owner, group and permissions."
    desc "The #{file} file should owned by root, only be readable by owner."

    describe file(file) do
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should_not be_executable } if ::File.file?(file)
      it { should be_readable.by('owner') }
      it { should_not be_readable.by('group') }
      it { should_not be_readable.by('other') }
      it { should be_writable.by('owner') }
      it { should_not be_writable.by('group') }
      it { should_not be_writable.by('other') }
    end
  end
end
