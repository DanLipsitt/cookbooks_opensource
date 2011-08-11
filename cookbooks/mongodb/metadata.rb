maintainer       "RightScale opensource"
maintainer_email "opensource@rightscale.com"
license          IO.read(File.join(File.dirname(__FILE__), '..', '..', 'LICENSE'))
description      "Installs/Configures mongodb"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"
recipe "mongodb::default", "installs MongoDB"

attribute "mongodb", :display_name => "MongoDB", :type => "hash"

attribute "mongodb/release", 
  :display_name => "MongoDB new releases", 
  :description => "By default this recipe will install the 10gen stable Ubuntu package.  To override: Set this attribute to use other sources.  Valid values are 'stable', 'unstable', or 'snapshot' for Ubuntu packages, or '10gen' or '10gen-unstable' for packages by the MongoDB creators.", 
  :required => false, 
  :recipes => ["mongodb::default"],
  :choice => ['stable', 'unstable', 'snapshot', '10gen', '10gen-unstable']

