//
//  mfmConfrimPriceViewController.h
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mfmEnterPriceViewController.h"

@interface mfmConfirmPriceViewController : UIViewController
- (IBAction)btnCancel_TouchedUpInside:(id)sender;
- (IBAction)btnConfrim_TouchedUpInside:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

-(void) setPrice:(NSNumber*)price;
@end
