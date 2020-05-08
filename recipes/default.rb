#
# Cookbook:: learn_cron_resource
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
cron 'cron_disply_current_time' do
  minute '*/15'
  command 'NOW=$(date +"%T") && sudo echo "Current time:"  $NOW > ~/time.txt'
  action :create
end
