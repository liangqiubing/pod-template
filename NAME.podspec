#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = '${POD_NAME}.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '${POD_NAME}.描述'

  s.homepage         = 'https://gitee.com/${USER_NAME}'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://gitee.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.swift_version = '5.0'

  s.source_files = '${POD_NAME}/Classes/**/*'
  
  # s.subspec 'SS' do |ss|
  #   ss.source_files = '${POD_NAME}/Classes/SS/**/*'
  # end

  # s.vendored_libraries = '${POD_NAME}/Classes/*.a'

  # s.vendored_frameworks = '${POD_NAME}/Classes/*.framework'
  
  # s.resource = '${POD_NAME}/Classes/*.bundle'

  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'

  # s.libraries = 'sqlite3', 'c++', 'z'

  # s.frameworks = 'UIKit', 'MapKit'

  # s.dependency 'AFNetworking', '~> 2.3'

end
