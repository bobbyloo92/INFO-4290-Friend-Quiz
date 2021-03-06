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
questionTitleLabel,question1Label,question2Label,question3Label,question4Label;

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
    
    [[QuestionPack sharedCenter]enterQuestionPackIDandGetInfoFromDatabase:selectedQuestionPackID];
    
    //questionTitleLabel.text = [QuestionPack sharedCenter].questionTitle[0] ;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonNext:(id)sender {
    
    if([QuestionPack sharedCenter].questionIndex == 4)
    {
        [self performSegueWithIdentifier:@"toSendRequest" sender:nil];
    }
    else
    {
        [self performSegueWithIdentifier:@"toSelf" sender:nil];
    }
    
    
    [QuestionPack sharedCenter].questionIndex++;
    
}
@end
