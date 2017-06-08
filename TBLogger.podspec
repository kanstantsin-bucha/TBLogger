#
# Be sure to run `pod lib lint TBLogger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBLogger'
  s.version          = '1.1.2'
  s.summary          = 'TBLogger helps you log in clear per instance way'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    TBLogger helps you log in clear per instance way.
    You could set desired log level in runtime and even change it on the fly.
    You could customize log format, log level descriptions.
                       DESC

  s.homepage         = 'https://github.com/truebucha/TBLogger'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'truebucha' => 'truebucha@gmail.com' }
  s.source           = { :git => 'https://github.com/truebucha/TBLogger.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/truebucha'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'TBLogger/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TBLogger' => ['TBLogger/Assets/*.png']
  # }

  s.public_header_files = 'TBLogger/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.dependency 'CDBKit', '~> 1.1'
end
