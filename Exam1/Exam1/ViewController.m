//
//  ViewController.m
//  Exam1
//
// 2013111647 멀티미디어학과 정승경
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize departRegion, arrivalRegion, stepperTicketCount;
@synthesize labelStatus, labelCostOfTickets, labelNumberOfTickets, labelTotalMoneyInserted;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    unitRegionPrice = 600;
    labelNumberOfTickets.text = [NSString stringWithFormat:@"%d 매", (int) stepperTicketCount.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)regionSelected:(UISegmentedControl *)sender {
    NSInteger num = [departRegion selectedSegmentIndex];  // 출발구역에서 선택 된 값의 위치값
    
    NSInteger numm = [arrivalRegion selectedSegmentIndex];   // 도착구역에서 선택 된 값의 위치값

    NSInteger result = (num-numm);
    //NSInteger x = (NSInteger)labelNumberOfTickets.text;
    NSInteger x = (int) stepperTicketCount.value;
    NSInteger xx = (x * result * unitRegionPrice);
    
    if(result > 0) {                            //발권금액
        labelCostOfTickets.text = [NSString stringWithFormat:@"%d",xx];
    } else if (result == 0) {
        labelCostOfTickets.text =@"0";
        
    } else if (result < 0) {
        xx = abs(xx);
        labelCostOfTickets.text = [NSString stringWithFormat:@"%d",xx];
    }
    
    
}

- (IBAction)stepperChanged:(UIStepper *)sender {
    labelNumberOfTickets.text = [NSString stringWithFormat:@"%d 매", (int) stepperTicketCount.value];
}

- (IBAction)moneyInserted:(UIButton *)sender {
    NSString *str = sender.titleLabel.text;
    NSInteger value = [self.labelTotalMoneyInserted.text integerValue];    //라벨의 값을 정수로 바꿈.
    //NSInteger value = (NSInteger)labelCostOfTickets.text;
   
    
    if([str isEqualToString:@"100"]) {
        if ([labelTotalMoneyInserted.text isEqualToString:@"0"]) {
            labelTotalMoneyInserted.text = @"100";
        } else {
            value = (value+100);
            self.labelTotalMoneyInserted.text = [NSString stringWithFormat:@"%d", value];
        }
        
    }else if ([str isEqualToString:@"500"]) {
        if ([labelTotalMoneyInserted.text isEqualToString:@"0" ]) {
            labelTotalMoneyInserted.text = @"500";
        } else {
            value = (value+500);
            self.labelTotalMoneyInserted.text = [NSString stringWithFormat:@"%d", value];
        }
        
    }else if ([str isEqualToString:@"1000"]) {
        if ([labelTotalMoneyInserted.text isEqualToString:@"0" ]) {
            labelTotalMoneyInserted.text = @"1000";
        } else {
           
            value = (value+1000);
            self.labelTotalMoneyInserted.text = [NSString stringWithFormat:@"%d", value];
        }
    }
}

- (IBAction)buyTicket:(UIButton *)sender {
    int value = [self.labelCostOfTickets.text intValue];    //  발권금액
    int valuee = [self.labelTotalMoneyInserted.text intValue];  //투입금액
    int r = (value-valuee);
    if(r != 0) {
        r = abs(r);
        NSString *ssstr = [NSString stringWithFormat:@"%d", r];
        NSString *sstr = ([@"잔액은" stringByAppendingString:ssstr]);
        sstr = ([sstr stringByAppendingString:@"원 입니다."]);
        
        labelStatus.text = sstr;
    } else {
        labelStatus.text = @"잔액은 0원 입니다.";
    }
}
@end
