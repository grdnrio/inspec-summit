#### Apache configuration ###
# set Apache port
override['apache']['listen'] = ['*:443']

# set TLS version
override['apache']['mod_ssl']['directives']['SSLProtocol'] = 'TLSv1.2'
override['apache']['mod_ssl']['cipher_suite'] = 'TLSv1.2'

### Website styles ###
# main colour
default['website']['colour'] = 'orange'

# display logo - none / inline
default['website']['logo'] = 'inline'
