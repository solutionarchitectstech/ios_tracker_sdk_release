#
# Be sure to run `pod lib lint SATrackingSDKStandard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SATrackingSDKStandard"
  s.version          = "1.2.8"
  s.summary          = "#{s.name} (iOS) #{s.version}"

  s.homepage         = "https://github.com/solutionarchitectstech/ios_tracker_sdk_release"
  s.author           = { "SolutionArchitects" => "sergey.muravev@gmail.com" }
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }

  s.source               = { :git => "#{s.homepage}.git", :tag => "#{s.version}" }
  s.vendored_frameworks  = "#{s.name}.xcframework"

  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
end
