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
    

}

@end
