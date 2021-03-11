#
# Be sure to run `pod lib lint Folly.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'folly-ios'
  s.version          = '0.1.0'
  s.summary          = 'iOS framework of Folly that support use_frameworks!.'

  s.description      = <<-DESC
  Folly has stoped updating until version 2016.09.26.00 on CocoaPods. We want create a react-native vessel in order to integrate with main project, but the old version don't support we will do. So this the reasion that folly-ios lib presented.
                       DESC

  s.homepage         = 'https://github.com/beatjs/folly-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source           = { :git => 'https://github.com/beatjs/folly-ios.git', :tag => s.version.to_s }
  
  s.module_name = 'folly'
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = { "USE_HEADERMAP" => "NO",
                               "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                               "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\"" }
  s.compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -DFOLLY_HAVE_PTHREAD=1 -Wno-comma -Wno-shorten-64-to-32 -Wno-documentation'
                        
  
  s.source_files = 'folly/**/*.{cpp}'
  
  s.dependency 'boost-for-react-native'
  s.dependency 'DoubleConversion'
  s.dependency 'glog'
  
end