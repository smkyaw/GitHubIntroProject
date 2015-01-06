//
//  ViewController.m
//  Seaver Kyaw
//
//  Created by Heidi Kyaw on 1/5/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ourLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.ourLabel.text=@"I really want to be blue";
    self.ourLabel.backgroundColor=[UIColor brownColor];
}

- (IBAction)onChangeColorButtonPressed:(id)sender {

//    self.ourLabel.text=@"Yay im so Blue!";
//    self.ourLabel.backgroundColor=[UIColor blueColor]; whole screen

    if (self.ourLabel.backgroundColor == [UIColor blueColor])
    {
        self.ourLabel.backgroundColor=[UIColor greenColor];
        self.ourLabel.text=@"I really want to be blue";
    }
    else
    {
        self.ourLabel.backgroundColor = [UIColor blueColor];
        self.ourLabel.text=@"Yay! im so blue!!";
    }

}
- (IBAction)onchangebackgroundcolor:(id)sender {


    self.view.backgroundColor=[UIColor blueColor];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
