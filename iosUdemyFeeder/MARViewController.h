//
//  MARViewController.h
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/28/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MARViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textUsername;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;
@property (weak, nonatomic) IBOutlet UILabel *textSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *switchPassword;


- (IBAction)login:(UIButton *)sender;

@end
