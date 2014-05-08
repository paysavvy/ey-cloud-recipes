#
# Cookbook Name:: node_latest
# Recipe:: default
#
if node[:instance_role] == 'app_master'
  execute "installing node version manager" do
    user 'deploy'
    environment { 'HOME' => '/home/deploy' }
    command "curl https://raw.githubusercontent.com/creationix/nvm/v0.6.1/install.sh | sh && nvm install 0.10.28 && nvm alias default 0.10.28"
  end
end
