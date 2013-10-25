//
//  mfmNumberHelper.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmNumberHelper.h"

@implementation mfmNumberHelper

+(NSNumber*) stringToNSNumber:(NSString*) str
{
	NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
	[f setNumberStyle:NSNumberFormatterDecimalStyle];
	NSNumber* ret = [f numberFromString:str];
	return ret;
}

@end

