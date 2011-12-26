//
//  ShakeAppDelegate.h
//  Shake
//
//  Created by Xubing Zhang on 11-12-26.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShakeViewController;

@interface ShakeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ShakeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ShakeViewController *viewController;

@end

