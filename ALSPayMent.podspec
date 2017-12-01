#
# Be sure to run `pod lib lint ALSPayMent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ALSPayMent'
  s.version          = '0.1.14'
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

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
  core.source_files = 'ALSPayMent/Classes/**/*'
  core.public_header_files = 'ALSPayMent/Classes/**/*.h'
 
  core.frameworks = "CoreMotion","CoreGraphics", "CoreTelephony","QuartzCore","SystemConfiguration","Security","Foundation","UIKit"
  core.ios.library = 'z', 'sqlite3.0','c++', 'stdc++'
  core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC',
  'ENABLE_BITCODE' => 'NO' }
  core.vendored_libraries = "ALSPayMent/lib/*.a"
  end

  s.dependency 'ALSAlipay'
  s.dependency 'PodAsset'
  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/**',
    'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }
end
