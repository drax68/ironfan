maintainer       "Philip (flip) Kromer - Infochimps, Inc"
maintainer_email "coders@infochimps.com"
license          "Apache 2.0"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "3.0.0"

description      "Mounts volumes  as directed by node metadata. Can attach external cloud drives, such as ebs volumes."

depends          "aws"
depends          "xfs"


%w[ debian ubuntu ].each do |os|
  supports os
end

attribute "mountable_volumes/aws_credential_source",
  :display_name          => "",
  :description           => "",
  :default               => "data_bag"

attribute "mountable_volumes/aws_credential_handle",
  :display_name          => "",
  :description           => "",
  :default               => "main"
