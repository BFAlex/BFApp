//
//  UIView+BFView.m
//  BFApp
//
//  Created by BFAlex on 2018/5/8.
//  Copyright © 2018年 BFAlex. All rights reserved.
//

#import "UIView+BFView.h"

@implementation UIView (BFView)

- (CGFloat)width {
    
    return self.bounds.size.width;
}

- (CGFloat)height {
    
    return self.bounds.size.height;
}

- (CGFloat)left {
    
    return self.frame.origin.x;
}

- (CGFloat)right {
    
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)bottom {
    
    return self.frame.origin.y + self.frame.size.height;
}

#pragma mark - 

- (void)cornerView {
    
    [self cornerViewWithBorderColor:[UIColor blackColor]];
}

- (void)cornerViewWithBorderColor:(UIColor *)borderColor {
    
    CGSize viewSize = self.bounds.size;
    
    self.clipsToBounds = true;
    self.layer.cornerRadius = viewSize.width < viewSize.height ? viewSize.width / 2 : viewSize.height / 2;
    self.layer.borderWidth = 1.0;
    self.layer.borderColor = borderColor.CGColor;
}

@end
