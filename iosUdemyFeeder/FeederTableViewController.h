//
//  FeederTableViewController.h
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/30/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeederTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *feeder;
@property (strong, nonatomic) NSMutableArray *arrayFeeder;

@end
