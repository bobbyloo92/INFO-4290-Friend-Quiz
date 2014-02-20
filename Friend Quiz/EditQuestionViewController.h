//
//  EditQuestionViewController.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QuestionPack.h"

@interface EditQuestionViewController : UIViewController

@property int selectedQuestionPackID;


@property (weak, nonatomic) IBOutlet UILabel *questionTitleLabel;

@property (weak, nonatomic) IBOutlet UIButton *question1Label;
@property (weak, nonatomic) IBOutlet UIButton *question2Label;
@property (weak, nonatomic) IBOutlet UIButton *question3Label;
@property (weak, nonatomic) IBOutlet UIButton *question4Label;









- (IBAction)buttonNext:(id)sender;

@end
