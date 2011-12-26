//
//  ShakeView.m
//  Shake
//
//  Created by Xubing Zhang on 11-12-26.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import "ShakeView.h"


@implementation ShakeView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

-(BOOL)canBecomeFirstResponder
{
	
	return YES;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
