//
//  ZBBananaLayer.h
//  CAList
//
//  Created by 黒木 裕貴 on 12/06/02.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface ZBBananaLayer : CALayer
{
	NSUInteger imageIndex;
	NSTimer *animationTimer;
	NSArray *images;
}

@end
