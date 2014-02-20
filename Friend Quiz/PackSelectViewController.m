//
//  PackSelectViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "PackSelectViewController.h"

@interface PackSelectViewController ()

@end

@implementation PackSelectViewController

@synthesize selectedQuestionPackID, arrayQuestionPack, pickerQuestionPack;

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
    
    NSArray *data = [[NSArray alloc]initWithObjects: @"Default Pack", @"Mix Pack", @"Easy Pack", @"Hard Pack", @"Best Friend Pack", @"Fruit Pack", @"Color Pack", @"Location Pack", nil];
    arrayQuestionPack = data;
    
    [QuestionPack sharedCenter].questionIndex = 0;
    
    // Get picker info
    //NSString *select = [arrayQuestionPack objectAtIndex:[pickerQuestionPack selectedRowInComponent:0]];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [arrayQuestionPack count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [arrayQuestionPack objectAtIndex:row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EditQuestionViewController *destination = [segue destinationViewController];
    destination.selectedQuestionPackID = selectedQuestionPackID;
}

-(void)selectQuestionPackWithID: (int)packID
{
    [[QuestionPack sharedCenter]enterQuestionPackIDandGetInfoFromDatabase:packID];
}

@end
