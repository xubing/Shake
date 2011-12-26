//
//  ShakeViewController.h
//  Shake
//
//  Created by Xubing Zhang on 11-12-26.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"ShakeView.h"
@interface ShakeViewController : UIViewController {

		IBOutlet ShakeView *sView;
}

	@property (retain,nonatomic)ShakeView* sView;
@end

