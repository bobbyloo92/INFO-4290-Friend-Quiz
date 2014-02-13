//
//  QuestionPack.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "QuestionPack.h"

@implementation QuestionPack

@synthesize questionPackID, questionTitle, questionIndex, questionAnswers, questionSuggestedAnswers,questionCorrectAnswer;


static QuestionPack *sharedAwardCenter = nil;    // static instance variable

+ (QuestionPack *)sharedCenter {
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



-(void)enterQuestionPackIDandGetInfoFromDatabase: (int)packID
{
    questionPackID = packID;
    
    //Database code
    
    //testing code
    questionTitle = [NSArray arrayWithObjects:
                     @"How old am I?",
                     @"What color do I like?",
                     @"What's my favorite food?",
                     @"What's my favorite drink?",
                     @"Where do I live?",nil];
    
    questionSuggestedAnswers = [[NSMutableArray alloc] initWithCapacity: 5];
    
    [questionSuggestedAnswers insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",nil] atIndex:0];
    [questionSuggestedAnswers insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",nil] atIndex:1];
    [questionSuggestedAnswers insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",nil] atIndex:2];
    [questionSuggestedAnswers insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",nil] atIndex:3];
    [questionSuggestedAnswers insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",nil] atIndex:4];
  
    

}

@end
