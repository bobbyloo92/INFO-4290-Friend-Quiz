//
//  QuestionPack.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionPack : NSObject


+ (QuestionPack *)sharedCenter;   // class method to return the singleton object

- (void)customMethod; // add optional methods to customize the singleton class\

- (void)enterQuestionPackIDandGetInfoFromDatabase: (int)packID;


@property int questionPackID;

@property int questionIndex;

// Question 1
@property NSString *question1Question;

@property NSArray *question1SuggestedAnswers;
@property NSArray *question1Answers;

@property int question1CorrectAnswer;


// Question 2
@property NSString *question2Question;

@property NSArray *question2SuggestedAnswers;
@property NSArray *question2Answers;

@property int question2CorrectAnswer;


// Question 3
@property NSString *question3Question;

@property NSArray *question3SuggestedAnswers;
@property NSArray *question3Answers;

@property int question3CorrectAnswer;


// Question 4
@property NSString *question4Question;

@property NSArray *question4SuggestedAnswers;
@property NSArray *question4Answers;

@property int question4CorrectAnswer;


// Question 5
@property NSString *question5Question;

@property NSArray *question5SuggestedAnswers;
@property NSArray *question5Answers;

@property int question5CorrectAnswer;

@end
