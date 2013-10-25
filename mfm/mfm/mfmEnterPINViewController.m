//
//  mfmEnterPINViewController.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmEnterPINViewController.h"
#import "mfmStringHelper.h"

@implementation mfmEnterPINViewController

- (void) viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.hidesBackButton = TRUE;
	self.btnMakePayment.enabled = FALSE;
	self.txtPIN.delegate = self;
}

- (IBAction)btnMakePayment_TouchedUpInside:(id)sender {
	NSString *pin = self.txtPIN.text;
	
	if ([pin isEqualToString:@"1234"])
		[self performSegueWithIdentifier:MFM_SEGUE_TO_MAKING_PAYMENT sender:self];
	else
	{
		[[[UIAlertView alloc] initWithTitle:@"Error" message:@"PIN error." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
		[self.navigationController popViewControllerAnimated:YES];
	}
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

- (IBAction)txtPIN_Changed:(id)sender {
	self.btnMakePayment.enabled = [self.txtPIN.text isEqualToLength:MFM_PIN_FIXED_LENGTH];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
	if (textField.text.length >= MFM_PIN_FIXED_LENGTH && range.length == 0)
		return FALSE;
	else
		return TRUE;
}

@end
