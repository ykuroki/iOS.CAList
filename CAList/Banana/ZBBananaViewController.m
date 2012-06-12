//
//  ZBBananaViewController.m
//  CAList
//
//  Created by 黒木 裕貴 on 12/06/02.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ZBBananaViewController.h"

@interface ZBBananaViewController ()

@end

@implementation ZBBananaViewController

- (void)loadView 
{
	UIView *aView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
	aView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	aView.backgroundColor = [UIColor lightGrayColor];    
	self.view = aView;
	[aView release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"Banana";
	
	if (!bananaLayer) {
		bananaLayer = [[ZBBananaLayer alloc] init];
		bananaLayer.frame = CGRectMake(10, 100, 120, 119);
		[self.view.layer addSublayer:bananaLayer];
	}
    
    [self move];

	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


#pragma mark -
#pragma mark Instance methods

- (void)move
{
    // 画像の移動を設定
	CABasicAnimation *animation  = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue = [NSValue valueWithCGPoint:bananaLayer.position];
	CGPoint toPoint = bananaLayer.position;
	toPoint.x += 480;
    toPoint.y += 300;
	animation.toValue = [NSValue valueWithCGPoint:toPoint];
	
	CABasicAnimation *rotateAnimation  = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
	rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0];
	rotateAnimation.toValue = [NSNumber numberWithFloat:1.0 * M_PI];
    
    // Layerの拡大を設定
	CABasicAnimation *scaoleAnimation  = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
	scaoleAnimation.duration = 0.5;
	scaoleAnimation.autoreverses = YES;
	scaoleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
	scaoleAnimation.toValue = [NSNumber numberWithFloat:4.0];
	
	
	CAAnimationGroup *group = [CAAnimationGroup animation];
	group.autoreverses = YES;
	group.duration = 1.0;
	group.animations = [NSArray arrayWithObjects:animation, scaoleAnimation, nil];
	group.repeatCount = NSNotFound;
	
	[bananaLayer addAnimation:group forKey:@"move"];
}

@end
