//
//  sharedInfo.h
//  Test Loop
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Yourdon J. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface sharedInfo : NSObject

+ (sharedInfo *)sharedCenter;   // class method to return the singleton object

- (void)customMethod; // add optional methods to customize the singleton class\

@property int sharedNumber;

@end
