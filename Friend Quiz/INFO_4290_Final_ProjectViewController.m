//
//  INFO_4290_Final_ProjectViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-01-29.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "INFO_4290_Final_ProjectViewController.h"
#import "INFO_4290_Final_ProjectAppDelegate.h"
#import "MainMenuViewController.h"

@interface INFO_4290_Final_ProjectViewController ()

@end

@implementation INFO_4290_Final_ProjectViewController {
    
    INFO_4290_Final_ProjectAppDelegate *appDelegate;
    
    
}
@synthesize loginView;


- (void) viewWillAppear:(BOOL)animated{
    

    
    
    

    
}

-(void)viewDidAppear:(BOOL)animated{
    
    //inherit the shared app delegate object.
    appDelegate= (INFO_4290_Final_ProjectAppDelegate *)[[UIApplication sharedApplication]delegate];
    //Refer to the check Facebook Session method in the App Delegate.m file
    [appDelegate checkFacebookSession];
    
    //initialize an object from the main view controller
    MainMenuViewController *mVC = [[MainMenuViewController alloc]init];
    
    

    if([appDelegate checkFacebookSession] == TRUE){
        
        
        NSLog(@"Logged in to Facebook !");
        
        //     [self performSegueWithIdentifier:@"startGameSegue" sender:self];
       
        //Show the main View Controller if the user is successful in logging in.
        
        
        [self presentViewController:mVC animated:YES completion:nil];
        


    }
    else{
        
     //   [self performSegueWithIdentifier:@"startGameSegue" sender:self];
        
        NSLog(@"Not logged in to Facebook at all!");
        
    }
    

    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    loginView.readPermissions = @[@"basic_info",@"email",@"user_likes"];
    
  //  FBLoginView *loginView = [[FBLoginView alloc] init];
    // Align the button in the center horizontally
    //loginView.frame = CGRectOffset(loginView.frame, (self.view.center.x - (loginView.frame.size.width / 2)), 5);
    //[self.view addSubview:loginView];
    
    //changes from Christian
    
  
    
}

/*
-(BOOL)checkFacebookSession
{
    if([FBSession activeSession].state == FBSessionStateCreatedTokenLoaded)
        
    {
        
        
        
        
        NSLog(@"Logged in to Facebook");
        UIAlertView *alertDialog;
        
        alertDialog = [[UIAlertView alloc]initWithTitle:@"Facebook" message:@"You are logged in to Facebook" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"No", nil];
        
        [alertDialog show];
        
        return YES;
    
    }
        else{
            
            
            NSLog(@"Not logged in to Facebook");
            return NO;
        }
    
}
*/
    
    
    
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
