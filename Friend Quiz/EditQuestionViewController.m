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
    
    [question2label setTitle:[[QuestionPack sharedCenter].questionSuggestedAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][1]forState:UIControlStateNormal  ];
    
    [question3label setTitle:[[QuestionPack sharedCenter].questionSuggestedAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][2]forState:UIControlStateNormal  ];
    
    [question4label setTitle:[[QuestionPack sharedCenter].questionSuggestedAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][3]forState:UIControlStateNormal  ];

    
    
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


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        // Canceled
    }
    else
    {
        NSString *stringInput =[alertView textFieldAtIndex:0].text;
        [question1label setTitle:[NSString stringWithFormat:@"%@", stringInput ] forState: UIControlStateNormal];
        [[QuestionPack sharedCenter].questionSuggestedAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][0] = stringInput;
        
    }
}


- (IBAction)q1EditButton:(id)sender {
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Edit Question Answer" message:@"Question 1 Answer:" delegate:self cancelButtonTitle:@"Cancel"  otherButtonTitles:@"Add", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    [alert setTag:0];
    [alert show];
    
}

- (IBAction)q2EditButton:(id)sender {
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Edit Question Answer" message:@"Question 2 Answer:" delegate:self cancelButtonTitle:@"Cancel"  otherButtonTitles:@"Add", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    [alert setTag:1];
    [alert show];
    
}

- (IBAction)q3EditButton:(id)sender {
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Edit Question Answer" message:@"Question 3 Answer:" delegate:self cancelButtonTitle:@"Cancel"  otherButtonTitles:@"Add", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    [alert setTag:2];
    [alert show];
    
}

- (IBAction)q4EditButton:(id)sender {
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Edit Question Answer" message:@"Question 4 Answer:" delegate:self cancelButtonTitle:@"Cancel"  otherButtonTitles:@"Add", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    [alert setTag:3];
    [alert show];
    
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
