//
//  CAListAppDelegate.m
//  CAList
//
//  Created by  on 12/06/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CAListAppDelegate.h"

#import "CAListViewController.h"

@implementation CAListAppDelegate

@synthesize window;
@synthesize navigationController;

- (void)dealloc
{
    [window release];
    [navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    CAListViewController *controller = [[[CAListViewController alloc] initWithNibName:@"CAListViewController" bundle:nil] autorelease];
    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:controller] autorelease];
    
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
