$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'knife-cloudformation/version'
Gem::Specification.new do |s|
  s.name = 'knife-cloudformation'
  s.version = KnifeCloudformation::VERSION.version
  s.summary = 'Knife tooling for Cloud Formation'
  s.author = 'Chris Roberts'
  s.email = 'code@chrisroberts.org'
  s.homepage = 'http://github.com/hw-labs/knife-cloudformation'
  s.description = 'Knife tooling for Cloud Formation'
  s.license = 'Apache-2.0'
  s.require_path = 'lib'
  s.add_dependency 'sfn', '< 1.0'
  s.files = Dir['lib/**/*'] + %w(knife-cloudformation.gemspec README.md CHANGELOG.md LICENSE)
  s.post_install_message = <<-EOF
IMPORTANT NOTE: The knife-cloudformation gem is deprecated!

Please uninstall the knife-cloudformation gem as it is no longer maintained. The cloudformation
knife plugin is distributed via the sfn gem which has been automatically installed as a dependency.

---
gem uninstall knife-cloudformation
---

Thanks and happy stacking!
EOF

end
