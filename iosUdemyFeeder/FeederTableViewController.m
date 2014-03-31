//
//  FeederTableViewController.m
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/30/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import "FeederTableViewController.h"
#import "MRProgress.h"
#import "LeaguesTableViewController.h"

@interface FeederTableViewController () {
    __strong NSMutableData *responseData;
    __strong NSURLConnection *connection;
}

@end

@implementation FeederTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.arrayFeeder = [NSMutableArray new];
    responseData = [NSMutableData data];
    NSString *espnUrl = @"http://api.espn.com/v1/sports/?apikey=kdep287cnj4xg5rsn2sm74y6";
    NSURL *url = [[NSURL alloc] initWithString:espnUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [MRProgressOverlayView showOverlayAddedTo:self.view title:@"Retrieving info from ESPN API" mode:MRProgressOverlayViewModeIndeterminate animated:YES];
    
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
    cell.textLabel.text = self.arrayFeeder[indexPath.row][@"name"];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.feeder indexPathForSelectedRow];
    LeaguesTableViewController *leagues = [segue destinationViewController];
    leagues.leagues = self.arrayFeeder[indexPath.row][@"leagues"];
}

#pragma mark - NSURLConnection Delegate

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [responseData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [responseData setLength:0];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"The connection to ESPN could not be established." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSError *error;
    NSDictionary *results = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
//    [self.arrayFeeder addObject:results[@"sports"]];
    self.arrayFeeder = results[@"sports"];
    NSLog(@"Results: %@", self.arrayFeeder[0][@"name"]);
    [self.feeder reloadData];
    [MRProgressOverlayView dismissAllOverlaysForView:self.view animated:YES];
}

@end
