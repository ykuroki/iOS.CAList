//
//  ZBBananaLayer.m
//  CAList
//
//  Created by 黒木 裕貴 on 12/06/02.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ZBBananaLayer.h"

@implementation ZBBananaLayer

- (void)timer:(NSTimer *)timer
{
	if (!self.superlayer) {
		return;
	}
	
	if (self.hidden) {
		return;
	}
	
	imageIndex++;
	if (imageIndex >= [images count]) {
		imageIndex = 0;
	}
	UIImage *image = [images objectAtIndex:imageIndex];
	self.contents = (id)image.CGImage;
}

- (id)init
{
	self = [super init];
	if (self != nil) {
		images = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"banana1.tiff"],
				  [UIImage imageNamed:@"banana2.tiff"],
				  [UIImage imageNamed:@"banana3.tiff"],
				  [UIImage imageNamed:@"banana4.tiff"],
				  [UIImage imageNamed:@"banana5.tiff"],
				  [UIImage imageNamed:@"banana6.tiff"],
				  [UIImage imageNamed:@"banana7.tiff"],
				  [UIImage imageNamed:@"banana8.tiff"], nil];
		UIImage *firstImage = [images objectAtIndex:0];
		self.contents = (id)firstImage.CGImage;
		animationTimer = [[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timer:) userInfo:nil repeats:YES] retain];
	}
	return self;
}


@end
