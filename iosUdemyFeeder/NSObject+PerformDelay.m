//
//  NSObject+PerformDelay.m
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/29/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import "NSObject+PerformDelay.h"

@implementation NSObject (PerformDelay)


/* * * * * * * * * * * * * * * * *
 * Implementation File
 * * * * * * * * * * * * * * * * */

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay {
    int64_t delta = (int64_t)(1.0e9 * delay);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delta), dispatch_get_main_queue(), block);
}


@end
