Pod::Spec.new do |s|
  s.name         = "ssssaac"
  s.version      = "0.1.0"
  s.summary      = 'A short description of xxssss.'
  s.description  = <<-DESC
                   Http and Socks proxy based on Privoxy and Antinat.
                   DESC
  s.homepage     = "https://github.com/SpikeLeeHom/ssssaac"
  s.license      = "GPLv2"
  s.author        = { "SpikeLeeHom" => "spikeleeyuuui@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.source_files  = "ShadowPath", "ShadowPath/**/*.{c,h,m,swift}"
  s.libraries = "z" 
  s.pod_target_xcconfig = { 
    'OTHER_CFLAGS' => '-DHAVE_CONFIG_H -DUSE_CRYPTO_OPENSSL -DLIB_ONLY -DUDPRELAY_LOCAL -DMODULE_LOCAL', 
    # 'HEADER_SEARCH_PATHS' => '',
  }
  s.vendored_libraries = 'ShadowPath/Antinat/expat-lib/lib/libexpat.a', 'ShadowPath/shadowsocks-libev/libopenssl/lib/libcrypto.a', 'ShadowPath/shadowsocks-libev/libopenssl/lib/libssl.a', 'ShadowPath/shadowsocks-libev/libsodium-ios/lib/libsodium.a'
end
