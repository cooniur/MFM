//
//  mfmEnterPINViewController.h
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mfmUITextField.h"

@interface mfmEnterPINViewController : UIViewController <UITextFieldDelegate>

- (IBAction)btnMakePayment_TouchedUpInside:(id)sender;
- (IBAction)btnCancel_TouchedUpInside:(id)sender;
- (IBAction)txtPIN_Changed:(id)sender;

@property (weak, nonatomic) IBOutlet mfmUITextField *txtPIN;
@property (weak, nonatomic) IBOutlet UIButton *btnMakePayment;

@end
