//
//  MainViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-13.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface MainViewController : UIViewController <FBLoginViewDelegate>


@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *pictureView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet FBLoginView *loginView;

@end
