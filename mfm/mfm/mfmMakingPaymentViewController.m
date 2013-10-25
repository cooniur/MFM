//
//  mfmMakePaymentViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmMakingPaymentViewController.h"

@implementation mfmMakingPaymentViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
}

- (IBAction)btnSucceeded_TouchedUpInside:(id)sender {
	[self performSegueWithIdentifier:MFM_SEGUE_TO_PAYMENT_SUCCEEDED sender:self];
}

- (IBAction)btnFailed_TouchedUpInside:(id)sender {
	[self performSegueWithIdentifier:MFM_SEGUE_TO_PAYMENT_FAILED sender:self];
}
@end
