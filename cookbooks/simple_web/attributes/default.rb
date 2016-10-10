default['firewall']['allow_ssh'] = true
default['simple_web']['open_ports'] = 443

default['simple_web']['document_root'] = '/var/www/html'


# set TLS version
# override['apache']['mod_ssl']['directives'] = { 'SSLProtocol' => 'TLSv1.2' }
override['apache']['mod_ssl']['protocol'] = '-All -SSLv3 -TLSv1 -TLSv1.1 +TLSv1.2'
# override['apache']['mod_ssl']['cipher_suite'] = 'TLSv1.2'
override['apache']['mod_ssl']['honor_cipher_order'] = 'On'


### Website styles ###
# main colour
default['website']['colour'] = 'blue'
# display logo - none / inline
default['website']['logo'] = 'none'
# title text
default['website']['title'] = 'This is my awesome website'

