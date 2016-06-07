//
//  UIView+Orientation.m
//  mytest
//
//  Created by Jackson.He on 14-1-6.
//  Copyright (c) 2014年 Jackson. All rights reserved.
//

#import "UIView+Orientation.h"
#import <objc/runtime.h>

const void *lFrameKey = @"lFrameKey";
const void *pFrameKey = @"pFrameKey";

@implementation UIView (Orientation)

- (void)setLFrame:(CGRect)frame {
    objc_setAssociatedObject(self, lFrameKey, NSStringFromCGRect(frame), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)lFrame
{
    return CGRectFromString(objc_getAssociatedObject(self, lFrameKey));
}

- (void)setPFrame:(CGRect)frame {
    objc_setAssociatedObject(self, pFrameKey, NSStringFromCGRect(frame), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)pFrame
{
    return CGRectFromString(objc_getAssociatedObject(self, pFrameKey));
}

- (void)resetOrientation:(BOOL)aIsPortrait {
    if (aIsPortrait) {
        self.frame = self.lFrame;
    } else {
        self.frame = self.pFrame;
    }
}

@end
