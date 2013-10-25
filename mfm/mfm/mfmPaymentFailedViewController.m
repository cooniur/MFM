//
//  mfmPaymentFailedViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmPaymentFailedViewController.h"

@implementation mfmPaymentFailedViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
}

- (IBAction)btnTryAgain_TouchedUpInside:(id)sender {
	NSArray *views = self.navigationController.viewControllers;
	int requiredIndex = views.count - 4;
	if (requiredIndex < 0)
		requiredIndex = 0;
	
	UIViewController* requireController = [[[self navigationController] viewControllers] objectAtIndex:requiredIndex];
	[[self navigationController] popToViewController:requireController animated:YES];
}
@end
