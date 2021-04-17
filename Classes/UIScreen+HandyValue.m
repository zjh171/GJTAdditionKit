//
//  UIScreen+HandyValue.m
//  GJTAdditionKit
//
//  Created by kyson on 2021/3/27.
//

#import "UIScreen+HandyValue.h"

@implementation UIScreen(HandyValue)


+(CGFloat) width {
    return [self mainScreen].bounds.size.width;
}

+(CGFloat) height {
    return [self mainScreen].bounds.size.height;
}
@end
