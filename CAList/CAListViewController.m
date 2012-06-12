//
//  CAListViewController.m
//  CAList
//
//  Created by  on 12/06/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CAListViewController.h"

@interface CAListViewController ()

@end

@interface UIViewController (Private)
+ (NSString *)displayName;
@end


@implementation CAListViewController

#pragma mark -
#pragma mark View lifecycle

- (void)dealloc 
{	
    [super dealloc];
}

- (void)viewDidUnload 
{
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.title = @"Showcases";
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    switch (indexPath.row) {
		case 0:
			cell.textLabel.text = @"1. Basic Animation";
			break;
		case 1:
			cell.textLabel.text = @"2. CAKeyframeAnimation";
			break;
		case 2:
			cell.textLabel.text = @"3. Transitions";
			break;			
		case 3:
			cell.textLabel.text = @"4. Auto-layout";
			break;
		case 4:
			cell.textLabel.text = @"5. Tableview";
			break;
		case 5:
			cell.textLabel.text = @"6. Fireworks";
			break;
		case 6:
			cell.textLabel.text = @"7. Grid Control";
			break;			
		case 7:
			cell.textLabel.text = @"8. Transform";
			break;			
            
		default:
			break;
	}
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	UIViewController *controller = nil;
	switch (indexPath.row) {
		case 0:
		{
            controller = [[ZBBananaViewController alloc] init];
//            controller = [[[ZBBananaViewController alloc] initWithNibName:@"ZBBananaView" bundle:nil] autorelease];
		}
			break;
		case 1:
		{
		}
			break;
		case 2:
		{
		}
			break;
		case 3:
		{
		}
			break;
		case 4:
		{
		}
			break;
		case 5:
		{
		}
			break;
		case 6:
		{
		}
			break;
		case 7:
		{
		}
			break;
		default:
			break;
	}
	if (controller) {
		[self.navigationController pushViewController:controller animated:YES];
		[controller release];
	}
}

@end
