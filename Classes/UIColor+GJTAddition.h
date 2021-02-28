//
//  UIColor+GJTAddition.h
//  GJTAdditionKit
//
//  Created by kyson on 2021/2/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor(GJTAddition)


+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


+(UIColor *) colorWithHexString:(NSString *) hexString;

@end

NS_ASSUME_NONNULL_END
