//
//  UIView+HandyValue.m
//  GJTAdditionKit
//
//  Created by kyson on 2021/3/19.
//

#import "UIView+HandyValue.h"

@implementation UIView(HandyValue)

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(CGFloat)gjt_left {
    return self.frame.origin.x;
}


-(CGFloat)gjt_top {
    return self.frame.origin.y;
}


- (CGFloat)gjt_height {
    return CGRectGetHeight(self.bounds);
}


-(CGFloat)gjt_right {
    return self.frame.origin.x + self.frame.size.width;
}

-(CGFloat)gjt_bottom {
    return self.frame.origin.y + self.frame.size.height;
}


- (CGFloat)gjt_width {
    
    return CGRectGetWidth(self.bounds);
}


- (void)setGjt_left:(CGFloat)gjt_left {
    
    CGRect newFrame   = self.frame;
    newFrame.origin.x = gjt_left;
    self.frame        = newFrame;
}

- (void)setGjt_bottom:(CGFloat)gjt_bottom {
    
    CGRect newFrame   = self.frame;
    newFrame.origin.y = gjt_bottom - self.frame.size.height;
    self.frame        = newFrame;
}


-(void)setGjt_right:(CGFloat)gjt_right {
    CGRect newFrame   = self.frame;
    newFrame.origin.x = gjt_right - self.frame.size.width;
    self.frame        = newFrame;
}



-(void)setGjt_top:(CGFloat)gjt_top {
    self.frame = CGRectMake(self.gjt_left, gjt_top, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
}

-(void)setGjt_height:(CGFloat)gjt_height{
    
    CGRect newFrame      = self.frame;
    newFrame.size.height = gjt_height;
    self.frame           = newFrame;
}



-(void)setGjt_width:(CGFloat)gjt_Width {
    
    CGRect newFrame     = self.frame;
    newFrame.size.width = gjt_Width;
    self.frame          = newFrame;
}


- (void)setGjt_centerX:(CGFloat)gjt_centerX{
    
    CGPoint newCenter = self.center;
    newCenter.x       = gjt_centerX;
    self.center       = newCenter;
}

- (CGFloat)gjt_centerX {
    return self.center.x;
}

-(CGFloat)gjt_centerY {
    return self.center.y;
}

- (void)setGjt_centerY:(CGFloat)gjt_centerY{
    
    CGPoint newCenter = self.center;
    newCenter.y       = gjt_centerY;
    self.center       = newCenter;
}

- (CGSize)gjt_size {
    return self.frame.size;
}

-(void)setGjt_size:(CGSize)gjt_size {
    CGRect frame = self.frame;
    frame.size = gjt_size;
    self.frame = frame;
}



@end
