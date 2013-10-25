//
//  mfmViewController.h
//  mfm
//
//  Created by Tongliang Liu on 10/23/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mfmEnterPriceViewController : UIViewController <UITextFieldDelegate>

- (IBAction)btnNext_TouchedUpInside:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtPrice;

@end
