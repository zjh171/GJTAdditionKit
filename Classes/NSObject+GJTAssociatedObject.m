//
//  NSObject+GJTAssociatedObject.m
//  GJTAdditionKit
//
//  Created by kyson on 2021/4/17.
//

#import "NSObject+GJTAssociatedObject.h"
#import <objc/runtime.h>

@implementation NSObject(GJTAssociatedObject)


-(id) object:(SEL) key {
    return objc_getAssociatedObject(self, key);
}

-(void) setRetainNonatomicObject:(id) object withKey:(SEL) key {
    objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


-(void) setCopyNonatomicObject:(id) object withKey:(SEL) key {
    objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_COPY_NONATOMIC);

}

-(void) setRetainObject:(id) object withKey:(SEL) key {
    objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_RETAIN);

}

-(void) setCopyObject:(id) object withKey:(SEL) key {
    objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_COPY);

}



@end
