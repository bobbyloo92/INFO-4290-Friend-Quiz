//
//  SettingsMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-18.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "SettingsMenuViewController.h"
#import "SWRevealViewController.h"

@interface SettingsMenuViewController ()

@end

@implementation SettingsMenuViewController

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
    
    self.listBarButton.target = self.revealViewController;
    
    self.listBarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    //[self.listBarButton r]
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
