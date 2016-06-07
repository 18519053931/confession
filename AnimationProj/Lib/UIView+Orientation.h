//
//  UIView+Orientation.h
//  mytest
//
//  Created by Jackson.He on 14-1-6.
//  Copyright (c) 2014年 Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Orientation)

@property (nonatomic) CGRect pFrame;
@property (nonatomic) CGRect lFrame;

- (void)resetOrientation:(BOOL)aIsPortrait;

@end
