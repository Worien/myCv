//
//  NavigationController.m
//  PavelPugachCV
//
//  Created by Евгений on 08.05.16.
//  Copyright © 2016 Pavel. All rights reserved.
//

#import "NavigationController.h"
#import "SWRevealViewController.h"

@implementation NavigationController{
    NSArray* menu;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    menu = @[@"me", @"information", @"skills", @"education", @"experience", @"contacts", @"hobby"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [menu count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* cellIdentefier = [menu objectAtIndex:indexPath.row];
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentefier forIndexPath:indexPath];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue isKindOfClass:[SWRevealViewControllerSegue class]]) {
        SWRevealViewControllerSegue* swSegue = (SWRevealViewControllerSegue*) segue;
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvcSegue, UIViewController* scv, UIViewController* dvc){
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers:@[dvc] animated:NO];
            [self.revealViewController setFrontViewPosition:FrontViewPositionLeft animated:YES];
            
        };
    }
}

@end
