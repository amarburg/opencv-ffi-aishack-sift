# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "opencv-ffi-aishack-sift/version"

Gem::Specification.new do |s|
  s.name        = "opencv-ffi-aishack-sift"
  s.version     = CVFFI::FAST::VERSION
  s.authors     = ["Aaron Marburg"]
  s.email       = ["aaron.marburg@pg.canterbury.ac.nz"]
  s.homepage    = "http://github.com/amarburg/opencv-ffi-aishack-sift"
  s.summary     = %q{Utkarsh Singha's implementation of the SIFT keypoint detector/descriptor algorithm, as a plug-in for OpenCV-FFI.}
  s.description = %q{Utkarsh Singha's implementation of the SIFT keypoint detector/descriptor algorithm, as a plug-in for OpenCV-FFI.}

  s.files         = `git ls-files`.split("\n")
  s.extensions    = "ext/mkrf_conf.rb"
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "nice-ffi"
  s.add_dependency "mkrf"
  s.add_dependency "opencv-ffi"
end
