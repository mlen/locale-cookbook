defaults = node['locale']

execute 'generate_locale' do
  command 'locale-gen'

  action :nothing
end

template '/etc/default/locale' do
  owner 'root'
  group 'root'
  mode  '0644'

  source 'locale.erb'
  variables :lang => defaults['default']

  notifies :run, 'execute[generate_locale]'
end

template '/etc/locale.gen' do
  owner 'root'
  group 'root'
  mode  '0644'

  source 'locale.gen.erb'
  variables :locales => defaults['available']

  notifies :run, 'execute[generate_locale]'
end

