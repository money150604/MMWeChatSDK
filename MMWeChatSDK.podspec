Pod::Spec.new do |s|

s.name     = 'SSWeChatSDK'
s.version  = '1.6.2'
s.license  = { :type => 'Copyright', :text => 'Copyright (c) 2012 Tencent. All rights reserved.' }
s.summary  = 'The Official iOS SDK of WeChat from Tencent.'
s.description = <<-DESC
1、iOS 9系统策略更新，限制了http协议的访问，此外应用需要在“Info.plist”中将要使用的URL Schemes列为白名单，才可正常检查其他应用是否安装。
受此影响，当你的应用在iOS 9中需要使用微信SDK的相关能力（分享、收藏、支付、登录等）时，需要在“Info.plist”里增加如下代码：
<key>LSApplicationQueriesSchemes</key>
<array>
<string>weixin</string>
</array>
<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
</dict>
或者配置白名单域名pingma.qq.com
2、开发者需要在工程中链接上 CoreTelephony.framework
3、解决bitcode编译不过问题
DESC
s.homepage = 'http://developer.baidu.com/map/index.php?title=iossdk'
s.authors  = { 'Tencent' => 'developer@wechatapp.com' }
s.source   = { :http => 'https://res.wx.qq.com/open/zh_CN/htmledition/res/dev/download/sdk/WeChatSDK1.6.2.zip' }
s.ios.deployment_target = '4.3'
s.requires_arc   = true

s.vendored_libraries = 'SDK1.6.2/libWeChatSDK.a'
s.source_files = 'SDK1.6.2/*.h'
s.frameworks = [
'Foundation',
'SystemConfiguration',
'CoreTelephony'
]
s.libraries = [
'z',
'c++',
'sqlite3.0',
]

end