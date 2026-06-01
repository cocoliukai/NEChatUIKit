Pod::Spec.new do |spec|
  spec.name         = 'NEChatUIKit'
  spec.version      = "10.9.25"
  spec.summary      = 'Netease XKit'
  spec.homepage     = "http://netease.im"
  spec.license      = { :'type' => "Copyright", :'text' => " Copyright 2022 Netease " }
  spec.author       = "yunxin engineering department"
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  spec.source       = { :git => '', :tag => spec.version.to_s }
  spec.source_files = 'NEChatUIKit/Classes/**/*'
  spec.resource     = 'NEChatUIKit/Assets/**/*'
  spec.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64",
    "BUILD_LIBRARY_FOR_DISTRIBUTION" => "YES",
    "APPLICATION_EXTENSION_API_ONLY" => "NO",
    "DEBUG_INFORMATION_FORMAT" => "dwarf-with-dsym"
  }

  spec.dependency 'NEChatKit'
  spec.dependency 'NECommonUIKit'
  spec.dependency 'MJRefresh'
  spec.dependency 'SDWebImageWebPCoder'
  spec.dependency 'SDWebImageSVGKitPlugin'
end
