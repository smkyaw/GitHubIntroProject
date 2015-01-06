//
//  ViewController.m
//  InterGalacticTravel
//
//  Created by Heidi Kyaw on 1/6/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "RootViewController.h"
#import "VacationViewController.h"

@interface RootViewController ()


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    VacationViewController *vc = segue.destinationViewController;
    vc.title= [sender currentTitle];

    if([segue.identifier isEqualToString:@"RedDawnSegue"])
    {
        vc.isBlueStar=NO;
    }
    else
    {
        vc.isBlueStar=YES;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
