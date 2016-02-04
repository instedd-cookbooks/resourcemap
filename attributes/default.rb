default['resourcemap']['host_name'] = node['fqdn']
default['resourcemap']['passenger']['max_requests'] = nil

default['resourcemap']['mysql']['admin_username'] = node['mysql']['admin_username'] || 'root'
default['resourcemap']['mysql']['admin_password'] = node['mysql']['admin_password'] || node['mysql']['server_root_password']
default['resourcemap']['mysql']['username'] = node['resourcemap']['mysql']['admin_username']
default['resourcemap']['mysql']['password'] = node['resourcemap']['mysql']['admin_password']

default['resourcemap']['guisso']['enabled'] = false
default['resourcemap']['guisso']['url'] = 'https://login.instedd.org'
default['resourcemap']['guisso']['client_id'] = ''
default['resourcemap']['guisso']['client_secret'] = ''

default['resourcemap']['mobile_id'] = false
default['resourcemap']['plugins']['public_collection'] = false
default['resourcemap']['plugins']['snapshot'] = false
default['resourcemap']['plugins']['channels'] = false
default['resourcemap']['plugins']['reminders'] = false
default['resourcemap']['plugins']['alerts'] = false
default['resourcemap']['plugins']['fred_api'] = false
default['resourcemap']['plugins']['csd_api'] = false

default['resourcemap']['poirot']['enabled'] = false
default['resourcemap']['poirot']['source'] = 'resourcemap'
default['resourcemap']['poirot']['debug'] = false
default['resourcemap']['poirot']['server'] = ''
