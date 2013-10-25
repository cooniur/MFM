//
//  mfmConfrimPriceViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmConfirmPriceViewController.h"
#import "mfmSwipeCardViewController.h"

@implementation mfmConfirmPriceViewController
{
	NSNumber* _price;
}

- (void) setPrice:(NSNumber*)price {
	_price = price;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self showPrice];
	self.navigationItem.hidesBackButton = TRUE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:MFM_SEGUE_TO_SWIPE_CARD]) {
		mfmSwipeCardViewController *view = segue.destinationViewController;
		[view setPrice:_price];
	}
}

- (IBAction)btnCancel_TouchedUpInside:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:TRUE];
}

- (IBAction)btnConfrim_TouchedUpInside:(id)sender {
	[[[UIAlertView alloc] initWithTitle:@"Confirm"
								message:MFM_MSG_AGREE_PRICE
							   delegate:self
					  cancelButtonTitle:@"Cancel"
					  otherButtonTitles:@"Agree", nil]
	 show];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	switch (buttonIndex) {
			// Clicked agree to cancel payment
		case 1:
			[self performSegueWithIdentifier:MFM_SEGUE_TO_SWIPE_CARD sender:self];
			break;
	}
}


- (void) showPrice {
	static NSNumberFormatter *formatter = nil;
	
	if (formatter == nil) {
		formatter = [NSNumberFormatter new];
		[formatter setNumberStyle: NSNumberFormatterCurrencyStyle];
		[formatter setLenient:YES];
		[formatter setGeneratesDecimalNumbers:YES];
	}

	self.lblPrice.text = [formatter stringFromNumber:_price];
}

@end
