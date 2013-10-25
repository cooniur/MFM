//
//  mfmSwipeCardViewController.h
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mfmSwipeCardViewController : UIViewController
- (IBAction)btnCancel_TouchedUpInside:(id)sender;
- (IBAction)btnReadFailed_TouchedUpInside:(id)sender;
- (IBAction)btnReadSucceeded_TouchedUpInside:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblPrice;

- (void)setPrice:(NSNumber*)price;

@end
