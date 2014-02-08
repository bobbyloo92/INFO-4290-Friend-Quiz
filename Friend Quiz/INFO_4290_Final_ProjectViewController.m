//
//  INFO_4290_Final_ProjectViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-01-29.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "INFO_4290_Final_ProjectViewController.h"

@interface INFO_4290_Final_ProjectViewController ()

@end

@implementation INFO_4290_Final_ProjectViewController
@synthesize loginView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    loginView.readPermissions = @[@"basic_info",@"email",@"user_likes"];
    
  //  FBLoginView *loginView = [[FBLoginView alloc] init];
    // Align the button in the center horizontally
    //loginView.frame = CGRectOffset(loginView.frame, (self.view.center.x - (loginView.frame.size.width / 2)), 5);
    //[self.view addSubview:loginView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
