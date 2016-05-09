//
//  WorkViewController.m
//  PavelPugachCV
//
//  Created by Евгений on 09.05.16.
//  Copyright © 2016 Pavel. All rights reserved.
//

#import "WorkViewController.h"

@implementation WorkViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    [self.btnPlayMatker addTarget:self action:@selector(openPlayMarket) forControlEvents:UIControlEventTouchDown];
    [self.btnAin addTarget:self action:@selector(openAin) forControlEvents:UIControlEventTouchDown];
}

- (void) openPlayMarket{
    NSString* launchUrl = @"https://play.google.com/store/apps/details?id=com.concepterllc.shotlight";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}

-(void) openAin{
    NSString* launchUrl = @"http://ain.ua/2015/12/18/622781";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
}
@end
