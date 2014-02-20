//
//  EditQuestionViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "EditQuestionViewController.h"

@interface EditQuestionViewController ()

@end

@implementation EditQuestionViewController

@synthesize selectedQuestionPackID,
questionTitleLabel, question1label, question2label, question3label, question4label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Get question pack information from database
    [[QuestionPack sharedCenter]enterQuestionPackIDandGetInfoFromDatabase:selectedQuestionPackID];
    
    // Get question detail
    questionTitleLabel.text = [QuestionPack sharedCenter].questionTitle[[QuestionPack sharedCenter].questionIndex] ;
    
     [question1label setTitle:[[QuestionPack sharedCenter].questionSuggestedAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][0]forState:UIControlStateNormal  ];
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)question1button:(id)sender {
}

- (IBAction)question2button:(id)sender {
}

- (IBAction)question3button:(id)sender {
}

- (IBAction)question4button:(id)sender {
}

- (IBAction)buttonNext:(id)sender {
    
    [QuestionPack sharedCenter].questionIndex++;
    
    if([QuestionPack sharedCenter].questionIndex == 5)
    {
        [self performSegueWithIdentifier:@"toSendRequest" sender:nil];
    }
    else
    {
        [self performSegueWithIdentifier:@"toSelf" sender:nil];
    }
    
    
}
@end
