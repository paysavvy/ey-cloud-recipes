#
# Cookbook Name:: node_latest
# Recipe:: default
#
if node[:instance_role] == 'app_master'
  execute "updating of node.js" do
    command "npm install -g n && n stable"
  end
end
