//
//  GGView.m
//  rotate test
//
//  Created by HalloWorld on 14-1-6.
//  Copyright (c) 2014年 Jackson. All rights reserved.
//

#import "GGView.h"

@implementation GGView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [super dealloc];
}

- (void)resetOrientation:(BOOL)aIsPortrait {
    if (aIsPortrait) {
        self.frame = self.pFrame;
    } else {
        self.frame = self.lFrame;
    }
}

@end
