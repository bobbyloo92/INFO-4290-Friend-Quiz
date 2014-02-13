//
//  sharedInfo.m
//  Test Loop
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Yourdon J. All rights reserved.
//

#import "sharedInfo.h"

@implementation sharedInfo


static sharedInfo *sharedAwardCenter = nil;    // static instance variable

+ (sharedInfo *)sharedCenter {
    if (sharedAwardCenter == nil) {
        sharedAwardCenter = [[super allocWithZone:NULL] init];
    }
    return sharedAwardCenter;
}

- (id)init {
    if ( (self = [super init]) ) {
        // your custom initialization
    }
    return self;
}

- (void)customMethod {
    // implement your custom code here
}



@end
