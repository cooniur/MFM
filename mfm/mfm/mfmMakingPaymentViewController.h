//
//  mfmMakePaymentViewController.h
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mfmMakingPaymentViewController : UIViewController

- (IBAction)btnSucceeded_TouchedUpInside:(id)sender;
- (IBAction)btnFailed_TouchedUpInside:(id)sender;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indMakingPayment;

@end
