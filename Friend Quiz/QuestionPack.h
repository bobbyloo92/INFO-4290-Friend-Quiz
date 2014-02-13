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
@property NSString *questionTitle;

@property NSArray *questionSuggestedAnswers;
@property NSArray *questionAnswers;

@property NSArray *questionCorrectAnswer;



@end
