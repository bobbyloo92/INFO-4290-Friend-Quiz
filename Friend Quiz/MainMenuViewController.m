//
//  MainMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-10.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "MainMenuViewController.h"
#import "INFO_4290_Final_ProjectAppDelegate.h"
#import <FacebookSDK/FacebookSDK.h>

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController{
    
    
    INFO_4290_Final_ProjectAppDelegate *appDelegate;
}

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
    
    appDelegate = (INFO_4290_Final_ProjectAppDelegate *)[[UIApplication sharedApplication]delegate];
    
   // [appDelegate checkFacebookSession];
	// Do any additional setup after loading the view.
    
    if([FBSession activeSession].state == FBSessionStateCreatedTokenLoaded){
        
        NSLog(@"Facebook user logged in!!!!");
        
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
