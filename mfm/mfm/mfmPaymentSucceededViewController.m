//
//  mfmPaymentSucceededViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmPaymentSucceededViewController.h"

@implementation mfmPaymentSucceededViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
}

- (IBAction)btnStartOver_TouchedUpInside:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:YES];
}
@end
