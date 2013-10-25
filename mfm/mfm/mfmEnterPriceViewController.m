//
//  mfmViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/23/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmEnterPriceViewController.h"
#import "mfmConfirmPriceViewController.h"
#import "mfmNumberHelper.h"

@interface mfmEnterPriceViewController ()
@end

@implementation mfmEnterPriceViewController
{
	NSNumber* _price;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.txtPrice.keyboardType = UIKeyboardTypeDecimalPad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:MFM_SEGUE_TO_CONFRIM_PRICE]) {
		mfmConfirmPriceViewController *view = segue.destinationViewController;
		[view setPrice:_price];
	}
}

- (IBAction)btnNext_TouchedUpInside:(id)sender {
	_price = [mfmNumberHelper stringToNSNumber:self.txtPrice.text];
	if (_price != nil)
		[self performSegueWithIdentifier:MFM_SEGUE_TO_CONFRIM_PRICE sender:self];
	else
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
														message:@"Price must be a valid number.\nPlease re-enter the price."
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
		[alert show];
	}
}
@end
