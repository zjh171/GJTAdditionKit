//
//  UIImage+GJTAddition.m
//  GJTAdditionKit
//
//  Created by kyson on 2021/3/28.
//

#import "UIImage+GJTAddition.h"

@implementation UIImage(GJTAddition)


+(UIImage *) imageWithColor:(UIColor *) color size:(CGSize) size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
      
    return img;
}
@end
