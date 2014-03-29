//
//  NSObject+PerformDelay.h
//  iosUdemyFeeder
//
//  Created by migue ramirez on 3/29/14.
//  Copyright (c) 2014 geekster.io. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PerformDelay)

/* * * * * * * * * * * * * * * * *
 * Header File
 * * * * * * * * * * * * * * * * */

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
