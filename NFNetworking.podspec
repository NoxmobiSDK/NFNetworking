Pod::Spec.new do |spec|

  spec.name         = "NFNetworking"
  spec.version      = "1.0.0" # Mark
  spec.summary      = "Wrapper project of AFNetworking for add privacy manifest.Base on AFNetworking 4.0.1"
  spec.homepage     = "https://github.com/NoxmobiSDK/NFNetworking"
  spec.license      = "MIT"
  spec.author       = { "Monkey" => "zhanglovesan@gmail.com" }

  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NFNetworking", :tag => "#{spec.version}" }
  spec.source_files = "NFNetworking.framework/Headers/*.{h}"

 spec.resource_bundles = {spec.name => 'NFNetworking.framework/PrivacyInfo.xcprivacy'}
  
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  # spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  spec.ios.vendored_frameworks = 'NFNetworking.framework'
  spec.requires_arc = true
  spec.frameworks = "Foundation", "UIKit", "AdSupport" #依赖多个系统framework
end
