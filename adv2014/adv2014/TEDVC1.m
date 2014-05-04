//
//  TEDVC1.m
//  adv2014
//
//  Created by admin on 14/5/4.
//  Copyright (c) 2014年 admin. All rights reserved.
//

#import "TEDVC1.h"
#import <MediaPlayer/MediaPlayer.h>
@interface TEDVC1 ()

@end

@implementation TEDVC1

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushBtn:(UIButton *)sender {
    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"aa" ofType:@"mov"];
    
    NSURL *fileURL=[NSURL fileURLWithPath:filePath];
    
    MPMoviePlayerViewController *player=[[MPMoviePlayerViewController alloc]initWithContentURL:fileURL];
  
    [self presentMoviePlayerViewControllerAnimated:player];
    
//    player present
    
}
@end
