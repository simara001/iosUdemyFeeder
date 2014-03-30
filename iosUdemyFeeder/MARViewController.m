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
    if ([JNKeychain loadValueForKey:@"password"]) {
        self.textUsername.text = [JNKeychain loadValueForKey:@"username"];
        self.textPassword.text = [JNKeychain loadValueForKey:@"password"];
    }

}

#pragma mark - Private Methods

- (IBAction)login:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                    message:[NSString stringWithFormat:@"Your username is: %@, and your password is: %@, and the switch is: %hhd", self.textUsername.text, self.textPassword.text, self.switchPassword.isOn]
                                                   delegate:self cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil, nil];
    [alert show];
    
    if (self.switchPassword.isOn) {
        [JNKeychain saveValue:self.textUsername.text forKey:@"username"];
        [JNKeychain saveValue:self.textPassword.text forKey:@"password"];
    } else {
        [JNKeychain deleteValueForKey:@"username"];
        [JNKeychain deleteValueForKey:@"password"];
    }
}

#pragma mark - UITextField Delegate Methods' Implementation

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == self.textUsername) {
        [self.textPassword becomeFirstResponder];
    } else if (textField == self.textPassword) {
        [self login:self];
    }
    
    return YES;
}


@end
