//
//  GoViewController.m
//  Exam2
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "GoViewController.h"

@interface GoViewController ()

@end

@implementation GoViewController
@synthesize ImageCandle;
@synthesize labelTransfered;
@synthesize labelRandomlyGenerated;
@synthesize imageState;
@synthesize numberPressed;
@synthesize rNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    candleOffImage = [UIImage imageNamed:@"candle-off.jpg"];
    candleOnImage  = [UIImage imageNamed:@"candle-on.jpg"];
    
    if([imageState isEqual:@"y"]) {
        [ImageCandle setImage:candleOnImage];
    } else if ([imageState isEqual:@"n"]) {
        [ImageCandle setImage:candleOffImage];
    }
    
    labelTransfered.text = numberPressed;
    labelRandomlyGenerated.text = rNumber;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
