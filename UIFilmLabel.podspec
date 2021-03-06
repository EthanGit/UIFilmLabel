Pod::Spec.new do |spec|
  spec.name = 'UIFilmLabel'
  spec.version = '1.7'
  spec.summary = 'UIFilmLabel'
  spec.homepage = 'https://github.com/EthanGit/UIFilmLabel'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Ethan' => 'lyc.ethan@gmail.com' }
  spec.source = { :git => 'https://github.com/EthanGit/UIFilmLabel.git', :tag => "#{spec.version}" }
  spec.source_files = 'UIFilmLabel/*.swift'
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true
  spec.module_name = 'UIFilmLabel'
end