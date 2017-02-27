Pod::Spec.new do |s|
s.name             = 'MMWeChatSDK'
s.version          = '1.7.6'
s.summary          = 'WeChat SDK for iOS to access WeChat platform.'
s.description      = 'It is a shame that WeChat does not have an official pod for their iOS SDK. Therefore, we create this pod to track the official WeChat iOS SDK.'
s.homepage         = 'https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=1417694084&token=&lang=zh_CN'
s.license          = { :type => 'Custom', :file => 'LICENSE' }
s.author           = { 'Tencent' => 'developer@wechatapp.com' }
s.source           = { :http => 'https://res.wx.qq.com/open/zh_CN/htmledition/res/dev/download/sdk/WeChatSDK1.7.6.zip }
s.platform         = :ios, '7.0'
s.requires_arc     = true
s.source_files     = 'OpenSDK1.7.6/*.{h,m}'
s.vendored_libraries  = 'OpenSDK1.7.6/libWeChatSDK.a'
s.frameworks = 'CFNetwork', 'CoreTelephony', 'Security', 'SystemConfiguration'
s.libraries = 'c++', 'sqlite3', 'z'
s.pod_target_xcconfig = {
'OTHER_LDFLAGS' => '-ObjC -all_load'
}
end
