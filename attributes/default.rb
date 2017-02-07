default['sysctl']['values'] = {}

default['sysctl']['config_file'] = '/etc/sysctl.conf'
if ['debian','rhel'].include?(node['platform_family'])
  default['sysctl']['config_file'] = '/etc/sysctl.d/99-chef.conf'
end
