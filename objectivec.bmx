Rem:license
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
EndRem

SuperStrict

Module Pub.ObjectiveC

ModuleInfo "Version: 1.00"
ModuleInfo "Author: Noel Cower"
ModuleInfo "License: zlib/libpng License"

?MacOS

ModuleInfo "LD_OPTS:-lobjc"

Extern "C"
	Function class_addIvar%(cls@ Ptr, name$z, size%, alignment@, types$z)
	Function class_addMethod%(cls@ Ptr, name@ Ptr, imp@ Ptr, types$z)
	Function class_addProtocol%(cls@ Ptr, protocol@ Ptr)
	Function class_conformsToProtocol%(cls@ Ptr, protocol@ Ptr)
	Function class_copyIvarList@ Ptr(cls@ Ptr, outCount@ Ptr)
	Function class_copyMethodList@ Ptr(cls@ Ptr, outCount@ Ptr)
	Function class_copyPropertyList@ Ptr(cls@ Ptr, outCount@ Ptr)
	Function class_copyProtocolList@ Ptr(cls@ Ptr, outCount@ Ptr)
	Function class_createInstance@ Ptr(cls@ Ptr, extraBytes%)
	Function class_getClassMethod@ Ptr(cls@ Ptr, aSelector@ Ptr)
	Function class_getClassVariable@ Ptr(cls@ Ptr, name$z)
	Function class_getInstanceMethod@ Ptr(cls@ Ptr, aSelector@ Ptr)
	Function class_getInstanceSize%(cls@ Ptr)
	Function class_getInstanceVariable@ Ptr(cls@ Ptr, name$z)
	Function class_getIvarLayout@ Ptr(cls@ Ptr)
	Function class_getMethodImplementation@ Ptr(cls@ Ptr, name@ Ptr)
	Function class_getMethodImplementation_stret@ Ptr(cls@ Ptr, name@ Ptr)
	Function class_getName@ Ptr(cls@ Ptr)
	Function class_getProperty:Byte Ptr(cls:Byte Ptr, name$z)
	Function class_getSuperclass:Byte Ptr(cls:Byte Ptr)
	Function class_getVersion:Int(theClass:Byte Ptr)
	Function class_getWeakIvarLayout@ Ptr(cls@ Ptr)
	Function class_isMetaClass%(cls@ Ptr)
	Function class_replaceMethod@ Ptr(cls@ Ptr, name@ Ptr, imp@ Ptr, types$z)
	Function class_respondsToSelector%(cls@ Ptr, sel@ Ptr)
	Function class_setIvarLayout(cls@ Ptr, layout@ Ptr)
	Function class_setSuperclass@ Ptr(cls@ Ptr, newSuper@ Ptr)
	Function class_setVersion(cls@ Ptr, version%)
	Function class_setWeakIvarLayout(cls@ Ptr, layout@ Ptr)
	
	Function ivar_getName@ Ptr(ivar@ Ptr)
	Function ivar_getOffset:Long(ivar@ Ptr)
	Function ivar_getTypeEncoding@ Ptr(ivar@ Ptr)
	
	Function method_copyArgumentType@ Ptr(_method@ Ptr, index%)
	Function method_copyReturnType@ Ptr(_method@ Ptr)
	Function method_exchangeImplementations(m1@ Ptr, m2@ Ptr)
	Function method_getArgumentType(_method@ Ptr, index%, dst@ Ptr, dst_len%)
	Function method_getImplementation@ Ptr(_method@ Ptr)
	Function method_getName@ Ptr(_method@ Ptr)
	Function method_getNumberOfArguments%(_method@ Ptr)
	Function method_getReturnType(_method@ Ptr, dst@ Ptr, dst_len%)
	Function method_getTypeEncoding@ Ptr(_method@ Ptr)
	Function method_setImplementation@ Ptr(_method@ Ptr, imp@ Ptr)
	
	Function objc_allocateClassPair@ Ptr(superclass@ Ptr, name$z, extraBytes%)
	Function objc_copyProtocolList@ Ptr Ptr(outCount@ Ptr)
	Function objc_getClass@ Ptr(name$z)
	Function objc_getClassList%(buffer@ Ptr, bufferLen%)
	Function objc_getMetaClass@ Ptr(name$z)
	Function objc_getProtocol@ Ptr(name@ Ptr)
	Function objc_getRequiredClass@ Ptr(name$z)
	Function objc_lookUpClass@ Ptr(name$z)
	' TODO: find a better way to do this
	Function objc_msgSend@ Ptr(theReceiver@ Ptr, theSelector@ Ptr, a%=0, b%=0, c%=0, d%=0, e%=0, f%=0, g%=0, h%=0)
	Function objc_msgSendSuper@ Ptr(_super@ Ptr, op@ Ptr, a%=0, b%=0, c%=0, d%=0, e%=0, f%=0, g%=0, h%=0)
	Function objc_msgSendSuper_stret(_super@ Ptr, op@ Ptr, a%=0, b%=0, c%=0, d%=0, e%=0, f%=0, g%=0, h%=0)
	Function objc_msgSend_fpret!(_self@ Ptr, op@ Ptr, a%=0, b%=0, c%=0, d%=0, e%=0, f%=0, g%=0, h%=0)
	Function objc_msgSend_stret(stretAddr@ Ptr, theReceiver@ Ptr, theSelector@ Ptr, a%=0, b%=0, c%=0, d%=0, e%=0, f%=0, g%=0, h%=0)
	Function objc_registerClassPair(cls@ Ptr)
	
	Function object_copy@ Ptr(obj@ Ptr, size%)
	Function object_dispose@ Ptr(obj@ Ptr)
	Function object_getClass@ Ptr(obj@ Ptr)
	Function object_getClassName@ Ptr(obj@ Ptr)
	Function object_getIndexedIvars@ Ptr(obj@ Ptr)
	Function object_getInstanceVariable@ Ptr(obj@ Ptr, name$z, outValue@ Ptr Ptr)
	Function object_getIvar@ Ptr(obj@ Ptr, ivar@ Ptr)
	Function object_setClass@ Ptr(obj@ Ptr, cls@ Ptr)
	Function object_setInstanceVariable@ Ptr(obj@ Ptr, name$z, value@ Ptr)
	Function object_setIvar(obj@ Ptr, ivar@ Ptr, value@ Ptr)
	
	Function property_getAttributes@ Ptr(property@ Ptr)
	Function property_getName@ Ptr(property@ Ptr)
	
	Function protocol_conformsToProtocol%(proto@ Ptr, other@ Ptr)
	Function protocl_copyMethodDescriptionList@ Ptr(p@ Ptr, isRequiredMethod%, isInstanceMethod%, outCount@ Ptr)
	Function protocl_copyPropertyList@ Ptr(protocl@ Ptr, outCount@ Ptr)
	Function protocl_copyProtocolList@ Ptr Ptr(proto@ Ptr, outCount@ Ptr)
	Function protocl_getMethodDescription@ Ptr(p@ Ptr, aSel@ Ptr, isRequiredMethod%, isInstanceMethod%)
	Function protocl_getName@ Ptr(p@ Ptr)
	Function protocl_getProperty@ Ptr(proto@ Ptr, name$z, isRequiredProperty%, isInstanceProperty%)
	Function protocl_isEqual%(proto@ Ptr, other@ Ptr)
	
	Function sel_getName@ Ptr(aSelector@ Ptr)
	Function sel_getUid@ Ptr(str$z)
	Function sel_isEqual%(lhs@ Ptr, rhs@ Ptr)
	Function sel_registerName@ Ptr(str$z)
End Extern

?
