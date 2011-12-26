//
//  ShakeViewController.m
//  Shake
//
//  Created by Xubing Zhang on 11-12-26.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import "ShakeViewController.h"
#import<QuartzCore/CAAnimation.h>
#import<QuartzCore/CAMediaTimingFunction.h>
@implementation ShakeViewController


	@synthesize sView;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

-(void)onTimer
{
	CATransition *transition = [CATransition animation];
	transition.duration = 3;
	transition.timingFunction = [CAMediaTimingFunction functionWithName:
								 //kCAMediaTimingFunctionEaseInEaseOut];
								 //kCAMediaTimingFunctionLinear];
								 kCAMediaTimingFunctionEaseIn];
	
	transition.type = //kCATransitionPush;
	kCATransitionReveal;
	transition.subtype = kCATransitionFromLeft;//kCATransitionFromBottom;
	transition.delegate = self;
	[self.view.layer addAnimation:transition forKey:nil];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

	sView = [[ShakeView alloc] initWithFrame:self.view.frame];
	self.view = sView;
	
	timer = [NSTimer scheduledTimerWithTimeInterval:5 
											 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


-(void) viewDidAppear:(BOOL)animated
{
	[self.view becomeFirstResponder];
	[super viewDidAppear:animated];
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
	if (event.subtype == UIEventSubtypeMotionShake) {

		UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:@"Shake Me" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alertView show];
		NSLog(@"motionBegan");
	}
}

-(void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
	if (event.subtype == UIEventSubtypeMotionShake) {
		NSLog(@"motionCancelled");
	}
}

-(void)motionEnd:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
	if (event.subtype == UIEventSubtypeMotionShake) {
		NSLog(@"motionEnd");
	}
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
