//
//  ViewController.m
//  Multiply
//
//  Created by Heidi Kyaw on 1/5/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberB;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentedControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    //Created an instance of NSString, named numbertext
    //set it equal to the text from numberTextField

    // step 1: get text values
    NSString *numberText = self.numberTextField.text;
    int numberInt = numberText.intValue;


    NSString *numberb = self.numberB.text;
    int numberbInt= numberb.intValue;

    // multipy together
    int resultValue = numberInt * numberbInt;


    int result = -1;
    if(self.operatorSegmentedControl.selectedSegmentIndex == 0) //must add the selectedsegment index to decide which to use.
    {
        //    finalResult2 = intMultiplierValue * intNumberValue;
        result = numberInt * numberbInt; //actual equation for result.
    }
    else
    {
        //     finalResult2 = intMultiplierValue / intNumberValue;
       result = numberInt / numberbInt;
    } // divides


    self.answerLabel.text= [NSString stringWithFormat:@"%i", result];

    if (resultValue>=20)
    {
        self.view.backgroundColor= [UIColor greenColor];
    }
    else if (resultValue<20)
     {
         self.view.backgroundColor= [UIColor whiteColor];

     }

    if (resultValue % 3 == 0) {
        self.answerLabel.text=@"fizz";

    }
    if (resultValue % 5 == 0) {
        self.answerLabel.text = @"buzz";


    }
    if (resultValue % 3 == 0 && resultValue % 5 == 0) {
        self.answerLabel.text = @"fizzbuzz";
    }
}
- (IBAction)onSliderMove:(id)sender
{

    {
        self.slider.minimumValue = 0.0; // set min of slider
        self.slider.maximumValue = 10.0; // set max of slider


        NSInteger sliderValue = self.slider.value; // set the slider value as an integer variable; 'value' grabs the property (sliderValue)
        NSString *draggedSliderValue = [NSString stringWithFormat:@"%lu", sliderValue]; // converted sliderValue integer into a string
        self.multiplierLabel.text = draggedSliderValue; //set multiplierTextField equal to dragged slider value.


}


    @end;
