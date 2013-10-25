//
//  mfmConfrimPriceViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmConfirmPriceViewController.h"

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

- (IBAction)btnCancel_TouchedUpInside:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:TRUE];
}

- (IBAction)btnConfrim_TouchedUpInside:(id)sender {
	[self performSegueWithIdentifier:MFM_SEGUE_TO_SWIPE_CARD sender:self];
}

- (void) showPrice {
	self.lblPrice.text = [NSString stringWithFormat:@"$ %@", _price];
}

@end
