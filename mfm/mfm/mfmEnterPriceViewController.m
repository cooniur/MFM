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
	NSDecimalNumber* _price;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	[self clearPrice];
	self.txtPrice.delegate = self;
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
	if (_price != nil && [_price doubleValue] > 0)
	{
		[self performSegueWithIdentifier:MFM_SEGUE_TO_CONFRIM_PRICE sender:self];
	}
	else
	{
		[[[UIAlertView alloc] initWithTitle:@"Info"
									message:@"Please enter the price."
								   delegate:nil
						  cancelButtonTitle:nil
						  otherButtonTitles:@"OK", nil]
		 show];
	}
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
	[self clearPrice];
	return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
	static NSNumberFormatter *formatter = nil;
	
	if (formatter == nil) {
		formatter = [NSNumberFormatter new];
		[formatter setNumberStyle: NSNumberFormatterCurrencyStyle];
		[formatter setLenient:YES];
		[formatter setGeneratesDecimalNumbers:YES];
	}

	NSString *replaced = [textField.text stringByReplacingCharactersInRange:range withString:string];
	_price = (NSDecimalNumber*) [formatter numberFromString:replaced];
    if (_price == nil) {
        // Something screwed up the parsing. Probably an alpha character.
        return NO;
    }

    // If the field is empty (the inital case) the number should be shifted to
    // start in the right most decimal place.
    short powerOf10 = 0;
    if (textField.text.length == 0) {
        powerOf10 = -formatter.maximumFractionDigits;
    }
    // If the edit point is to the right of the decimal point we need to do
    // some shifting.
    else if (range.location + formatter.maximumFractionDigits >= textField.text.length) {
        // If there's a range of text selected, it'll delete part of the number
        // so shift it back to the right.
        if (range.length) {
            powerOf10 = -range.length;
        }
        // Otherwise they're adding this many characters so shift left.
        else {
            powerOf10 = [string length];
        }
    }
    _price = [_price decimalNumberByMultiplyingByPowerOf10:powerOf10];
	
    // Replace the value and then cancel this change.
    textField.text = [formatter stringFromNumber:_price];
    return NO;
}

- (void)clearPrice {
	[self textField:self.txtPrice shouldChangeCharactersInRange:NSMakeRange(0, 0) replacementString:@"0"];
}
@end
