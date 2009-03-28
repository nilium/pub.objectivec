# Pub.ObjectiveC

### About

This is a module for BlitzMax that exposes the Objective-C 2.0 runtime API to BlitzMax.  You should place it in your BlitzMax pub modules folder (BlitzMax/mod/pub.mod/objectivec.mod).  A good way to do this is to clone the repository into pub.mod/objectivec.mod (e.g., <code>git clone urlToRepo objectivec.mod</code>).

I've tried to ensure that using the module is the same as if you were using it in C, and given that it's a standard C API, one concession has been made: use of <code>objc_msgSend</code> has been gimped a bit until I can find a decent work-around.  You're limited to only passing 16 4-byte signed integers for now - the default value for all 14 is currently 0.  This could be an issue for passing structs to messages, particularly large structs.  In such cases, it may be necessary to write functions in C to handle these particular cases.

### License

The module is licensed under the zlib/libpng license.  Considering the actual runtime is not my work, I figure this is fair enough.  If not, you're free to contact me [on github](http://github.com/nilium).

	Copyright (c) 2009 Noel R. Cower
	
	This software is provided 'as-is', without any express or implied
	warranty. In no event will the authors be held liable for any damages
	arising from the use of this software.
	
	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:
	
	1. The origin of this software must not be misrepresented; you must not
	claim that you wrote the original software. If you use this software
	in a product, an acknowledgment in the product documentation would be
	appreciated but is not required.
	
	2. Altered source versions must be plainly marked as such, and must not be
	misrepresented as being the original software.
	
	3. This notice may not be removed or altered from any source
	distribution.

### Links

**[The Objective-C 2.0 Runtime Reference](http://developer.apple.com/DOCUMENTATION/Cocoa/Reference/ObjCRuntimeRef/Reference/reference.html)**
