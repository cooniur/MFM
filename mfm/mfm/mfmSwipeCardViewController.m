//
//  mfmSwipeCardViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmSwipeCardViewController.h"

@implementation mfmSwipeCardViewController
- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
}

- (IBAction)btnCancel_TouchedUpInside:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Confirm" message:MFM_MSG_CANCEL_PAYMENT delegate:self cancelButtonTitle:nil otherButtonTitles:@"Yes",@"No", nil];
	[alert show];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	switch (buttonIndex) {
		// Clicked yes to cancel payment
		case 0:
			[self.navigationController popToRootViewControllerAnimated:YES];
			break;
	}
}

- (IBAction)btnReadFailed_TouchedUpInside:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
													message:@"Cannot read card. Please swipe card again."
												   delegate:nil
										  cancelButtonTitle:@"OK"
										  otherButtonTitles:nil];
	[alert show];
}

- (IBAction)btnReadSucceeded_TouchedUpInside:(id)sender {
	[self performSegueWithIdentifier:MFM_SEGUE_TO_ENTER_PIN sender:self];
}

@end
