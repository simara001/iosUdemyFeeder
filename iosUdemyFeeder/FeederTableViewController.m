//
//  FeederTableViewController.m
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/30/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import "FeederTableViewController.h"

@interface FeederTableViewController ()

@end

@implementation FeederTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.arrayFeeder = [@[@"Hello", @"World", @"This", @"is", @"new"]mutableCopy];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.arrayFeeder count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.arrayFeeder[indexPath.row];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
