//
//  PackSelectViewController.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EditQuestionViewController.h"
#import "Sendrequest.h"

@interface PackSelectViewController : UIViewController

@property int selectedQuestionPackID;


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;



@end
