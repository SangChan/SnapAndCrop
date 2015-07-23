//
//  UIButton+Custom.m
//  EduAndCerti
//
//  Created by SangChan on 2015. 3. 31..
//  Copyright (c) 2015년 sangchan. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIButton+Custom.h"

@implementation UIButton (Custom)

-(void)defaultStyle {
    self.layer.borderWidth = 1;
    self.layer.cornerRadius = 5.0;
    self.layer.masksToBounds = YES;
    [self setAdjustsImageWhenHighlighted:NO];
    [self setTitleColor:[UIColor colorWithRed:0.0 green:0.63 blue:0.68 alpha:1.0] forState:UIControlStateNormal];
    self.backgroundColor = [UIColor whiteColor];
    self.layer.borderColor = [[UIColor colorWithRed:0.23 green:0.69 blue:0.73 alpha:1.0] CGColor];
    [self setBackgroundImage:[self buttonImageFromColor:[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

-(void)fillRectStyle {
    self.layer.borderWidth = 1;
    self.layer.cornerRadius = 5.0;
    self.layer.masksToBounds = YES;
    [self setAdjustsImageWhenHighlighted:NO];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.69 blue:0.73 alpha:1.0];
    self.layer.borderColor = [[UIColor colorWithRed:0.23 green:0.69 blue:0.73 alpha:1.0] CGColor];
    [self setBackgroundImage:[self buttonImageFromColor:[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

- (UIImage *) buttonImageFromColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
