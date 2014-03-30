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

}

#pragma mark - Private Methods

- (IBAction)login:(UIButton *)sender {

}

#pragma mark - UITextField Delegate Methods' Implementation

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == self.textUsername) {
        NSLog(@"You are in textUsername");
    } else if (textField == self.textPassword) {
        NSLog(@"Your are in password");
    }
    
    return YES;
}


@end
