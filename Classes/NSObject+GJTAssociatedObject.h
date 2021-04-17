//
//  NSObject+GJTAssociatedObject.h
//  GJTAdditionKit
//
//  Created by kyson on 2021/4/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject(GJTAssociatedObject)


/// 动态添加属性到对象，避免频繁地添加 static NSString 作为 Key
/// @param key key
-(id) object:(SEL) key;

-(void) setRetainNonatomicObject:(id) object withKey:(SEL) key;


-(void) setCopyNonatomicObject:(id) object withKey:(SEL) key;

-(void) setRetainObject:(id) object withKey:(SEL) key;

-(void) setCopyObject:(id) object withKey:(SEL) key;


@end

NS_ASSUME_NONNULL_END
