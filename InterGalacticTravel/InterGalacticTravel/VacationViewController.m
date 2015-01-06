//
//  VacationViewController.m
//  InterGalacticTravel
//
//  Created by Heidi Kyaw on 1/6/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "VacationViewController.h"

@interface VacationViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *vacationImageView;

@end

@implementation VacationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ( self.isBlueStar )
    {
        self.view.backgroundColor = [UIColor blueColor];
        self.vacationImageView.image=[UIImage imageNamed:@"BlueStar"];
    }
    else
    {
        self.view.backgroundColor = [UIColor redColor];
        self.vacationImageView.image= [UIImage imageNamed:@"RedDwarf"];
    }

}





@end
