//
//  mfmSwipeCardViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmSwipeCardViewController.h"

@implementation mfmSwipeCardViewController
{
	NSNumber *_price;
}
- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
	[self showPrice];
}

- (IBAction)btnCancel_TouchedUpInside:(id)sender {
	[[[UIAlertView alloc] initWithTitle:@"Confirm"
								message:MFM_MSG_CANCEL_PAYMENT
							   delegate:self
					  cancelButtonTitle:@"No"
					  otherButtonTitles:@"Yes", nil] show];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	switch (buttonIndex) {
		// Clicked yes to cancel payment
		case 1:
			[self.navigationController popToRootViewControllerAnimated:YES];
			break;
	}
}

- (IBAction)btnReadFailed_TouchedUpInside:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info"
													message:MFM_MSG_CANNOT_READ_CARD
												   delegate:nil
										  cancelButtonTitle:@"OK"
										  otherButtonTitles:nil];
	[alert show];
}

- (IBAction)btnReadSucceeded_TouchedUpInside:(id)sender {
	[self performSegueWithIdentifier:MFM_SEGUE_TO_ENTER_PIN sender:self];
}

- (void)setPrice:(NSNumber*)price {
	_price = price;
}

- (void)showPrice {
	static NSNumberFormatter *formatter = nil;
	
	if (formatter == nil) {
		formatter = [NSNumberFormatter new];
		[formatter setNumberStyle: NSNumberFormatterCurrencyStyle];
		[formatter setLenient:YES];
		[formatter setGeneratesDecimalNumbers:YES];
	}
	
	self.lblPrice.text = [NSString stringWithFormat:@"Price: %@", [formatter stringFromNumber:_price]];
}
@end
