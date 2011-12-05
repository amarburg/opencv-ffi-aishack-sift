OpenCV-FFI "aishack" SIFT implementation
========================================

Introduction
------------

This Gem contains builds a native extension/plug-in to
[OpenCV-FFI](https://github.com/amarburg/opencv-ffi) which contains
an implementation of the [SIFT](http://en.wikipedia.org/wiki/Scale-invariant_feature_transform)
feature detector/descriptor algorithm.  This implementation 
is derived from Utkarsh Sinha's implementation as presented on his [blog](http://www.aishack.in/2010/07/implementing-sift-in-opencv/).

This was the original implementation of SIFT features in OpenCV-FFI, but I've since written C wrappers around the C++-only implementation included with OpenCV.  Not surprisingly, the OpenCV implementation is actually C++ wrappers around C code ... but the C API isn't exposed.  Going forward, the obvious choice would be expose the C API and wrap that directly.

This version is not as efficient as the OpenCV version.

It includes the binary and a set of Ruby-space wrappers in the
`CVFFI::AishackSIFT` module.

Most/all of this code was once in the main OpenCV-FFI project, but was
moved out to give a semblance of modularity.

Acknowledgements and License
----------------------------

The Gem itself is licensed under the MIT license.

Copyright
---------

Copyright (c) 2011 by Aaron Marburg

