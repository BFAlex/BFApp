//
//  UIView+BFView.h
//  BFApp
//
//  Created by BFAlex on 2018/5/8.
//  Copyright © 2018年 BFAlex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BFView)

#pragma mark - View四边坐标及宽高
- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)bottom;

#pragma mark - 样式
- (void)cornerView;
- (void)cornerViewWithBorderColor:(UIColor *)borderColor;

@end
