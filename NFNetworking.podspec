Pod::Spec.new do |spec|

  spec.name         = "NFNetworking"
  spec.version      = "1.2.0" # Mark
  spec.summary      = "Wrapper project of AFNetworking for add privacy manifest.Base on AFNetworking 4.0.1"
  spec.homepage     = "https://github.com/NoxmobiSDK/NFNetworking"
  spec.license      = "MIT"
  spec.author       = { "Monkey" => "zhanglovesan@gmail.com" }

  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NFNetworking.git", :tag => "#{spec.version}" }
  spec.source_files = "NFNetworking.framework/Headers/*.{h}"
  
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  
  spec.ios.vendored_frameworks = 'NFNetworking.framework'
end
