#
# Be sure to run `pod lib lint Keychain.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Keychain'
  s.version          = '0.1.0'
  s.summary          = 'Keychain Wrapper Class.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/pkrll/Keychain'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ardalan Samimi' => 'ardalan@saturnfive.se' }
  s.source           = { :git => 'https://github.com/pkrll/Keychain.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pkrll'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Keychain/Classes/**/*'
  s.frameworks = 'Foundation'
end