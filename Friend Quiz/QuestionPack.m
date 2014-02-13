//
//  QuestionPack.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "QuestionPack.h"

@implementation QuestionPack

@synthesize questionPackID,
question1Question, question1Answers, question1CorrectAnswer, question1SuggestedAnswers,
question2Question, question2Answers, question2CorrectAnswer, question2SuggestedAnswers,
question3Question, question3Answers, question3CorrectAnswer, question3SuggestedAnswers,
question4Question, question4Answers, question4CorrectAnswer, question4SuggestedAnswers,
question5Question, question5Answers, question5CorrectAnswer, question5SuggestedAnswers;


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
