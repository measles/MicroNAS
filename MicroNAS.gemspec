date = Date.today.to_s
version = "0.0.1"

Gem::Specification.new do |s|
  s.name        = 'MicroNAS'
  s.version     = version
  s.date        = date
  s.author	= "Some guy"
  s.summary     = "Simple small NAS software"
  s.description = "Simple ruby script to make somple NAS from your computer"
  s.files       = Dir.glob("{bin,doc,lib,locales}/**/*")
  s.license       = 'GPLv3'
end
