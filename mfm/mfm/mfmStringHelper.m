//
//  mfmStringHelper.m
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#import "mfmStringHelper.h"

@implementation NSString (mfmStringHelper)

- (BOOL) isEqualToLength:(NSUInteger)len {
	return [self length] == len;
}

@end
