#
# Be sure to run `pod lib lint ALSPayMent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ALSPayMent'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ALSPayMent.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yangzmpang/ALSPayMent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangzmpang' => 'zimin.yzm@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/yangzmpang/ALSPayMent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  
  #s.source_files = 'ALSPayMent/Classes/**/*','ALSPayMent/Classes/ALSInAppPurchase.framework/Headers/*.h'
  #s.ios.vendored_frameworks='ALSPayMent/Classes/ALSInAppPurchase.framework'
  #s.ios.public_header_files='ALSPayMent/Classes/ALSInAppPurchase.framework/Headers/*.h'
  #s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => 'ALSPayMent/Classes' }

  s.preserve_paths = 'ALSPayMent/Classes/ALSInAppPurchase.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework ALSInAppPurchase' }
  s.vendored_frameworks = 'ALSPayMent/Classes/ALSInAppPurchase.framework'

  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => "/Users/yangziminyangzimin/Desktop/test/ALSPayMent/ALSPayMent/ALSPayMent/Classes/openssl/include/**",'LIBRARY_SEARCH_PATHS' => "/Users/yangziminyangzimin/Desktop/test/ALSPayMent/ALSPayMent/ALSPayMent/Classes/**" }
  #s.vendored_libraries = "libcrypto.a","libssl.a"
  #s.libraries="libcrypto.a","libssl.a"

  # s.resource_bundles = {
  #   'ALSPayMent' => ['ALSPayMent/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  #s.dependency 'OpenSSL-Classic','= 1.0.1.j'
end
