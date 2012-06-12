//
//  CAListAppDelegate.h
//  CAList
//
//  Created by  on 12/06/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CAListViewController;

@interface CAListAppDelegate : NSObject <UIApplicationDelegate>{
    UIWindow *window;
    UINavigationController * navigationController;
    
}

//@property (strong, nonatomic) UIWindow *window;
//@property (strong, nonatomic) CAListViewController *viewController;

@property (retain, nonatomic) IBOutlet UIWindow *window;
@property (retain, nonatomic) IBOutlet UINavigationController *navigationController;
//@property (strong, nonatomic) IBOutlet CAListViewController *viewController;

@end
