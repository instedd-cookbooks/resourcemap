name             'resourcemap'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures resourcemap'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rbenv"
depends "instedd-common"
depends 'mysql', '< 6.0.0'
depends 'database', '>= 2.3.1'
depends "nodejs"
