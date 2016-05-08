//
//  ViewController.m
//  PavelPugachCV
//
//  Created by Евгений on 07.05.16.
//  Copyright © 2016 Pavel. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    self.navigationController.navigationBarHidden = YES;
    
    _batButton.target = self.revealViewController;
    _batButton.action = @selector(revealToggle:);
    
    [self.navigationButton addTarget:self.revealViewController action: @selector(revealToggle:) forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
