//
//  mfmUITextField.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmUITextField.h"

@implementation mfmUITextField

- (BOOL) canPerformAction:(SEL)action withSender:(id)sender {

	// do not display the menu
	[UIMenuController sharedMenuController].menuVisible = FALSE;
	
	// do not allow the user to select anything
	[self resignFirstResponder];
	
	return FALSE;
}

@end
