//
//  MARViewController.m
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/28/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import "MARViewController.h"
#import "MRProgress.h"
#import "NSObject+PerformDelay.h"
#import "JNKeychain.h"


@interface MARViewController ()

@end

@implementation MARViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [MRProgressOverlayView showOverlayAddedTo:self.view title:@"Success" mode:MRProgressOverlayViewModeCheckmark animated:YES];
    [self.view performBlock:^(void){[MRProgressOverlayView dismissAllOverlaysForView:self.view animated:YES];} afterDelay:2];

}

#pragma mark - Private Methods

- (IBAction)login:(UIButton *)sender {
    [JNKeychain saveValue:self.textPassword.text forKey:@"password"];
    [JNKeychain saveValue:self.textUsername.text forKey:@"username"];
    NSLog(@"username %@, and password: %@", [JNKeychain loadValueForKey:@"username"], [JNKeychain loadValueForKey:@"password"]);
}

@end
