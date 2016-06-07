//
//  GGView.h
//  mytest
//
//  Created by HalloWorld on 14-1-6.
//  Copyright (c) 2014年 Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGView : UIView

@property (nonatomic) CGRect lFrame;    //landscapeFrame横屏的frame
@property (nonatomic) CGRect pFrame;    //portraitFrame 竖屏的frame

- (void)resetOrientation:(BOOL)aIsPortrait;

@end
