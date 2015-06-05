shared_examples_for 'postgresql test' do

  describe package('postgresql'), :if => os[:family] == 'redhat' do
    it { should be_installed }
  end

  describe service('postgresql'), :if => os[:family] == 'redhat' do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(5432) do
    it { should be_listening }
  end

end
