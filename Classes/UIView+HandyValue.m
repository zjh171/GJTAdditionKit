//
//  UIView+HandyValue.m
//  GJTAdditionKit
//
//  Created by kyson on 2021/2/19.
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



-(CGFloat)gjt_right {
    return self.frame.origin.x + self.frame.size.width;
}

-(CGFloat)gjt_bottom {
    return self.frame.origin.y + self.frame.size.height;
}


-(void)setGjt_top:(CGFloat)gjt_top {
    self.frame = CGRectMake(self.gjt_left, gjt_top, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
}

@end
