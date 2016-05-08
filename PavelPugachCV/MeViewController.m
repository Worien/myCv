//
//  MeViewController.m
//  PavelPugachCV
//
//  Created by Pavel on 08.05.16.
//  Copyright © 2016 Pavel. All rights reserved.
//

#import "MeViewController.h"

@implementation MeViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    [self makeImageViewRound];
}

-(void) makeImageViewRound{
    self.roundedImageView.layer.cornerRadius = 75;
    self.roundedImageView.layer.masksToBounds = YES;
}


@end
