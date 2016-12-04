//
//  ViewController.m
//  Exam2
//
// 2013111647 멀티미디어학과 정승경
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "GoViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pickerNumbers;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arrayNumbers = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4",@"5",@"6",@"7",@"8",@"9", nil];

}

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id)sender
{
    GoViewController *vc = [segue destinationViewController];
    NSInteger randNumber = arc4random_uniform(9)+1;         // 무작위 값
    NSInteger num = (NSInteger)[arrayNumbers objectAtIndex:[self.pickerNumbers selectedRowInComponent:0]];             //피커 선택 값
    
    NSInteger aa = num+randNumber;
    if(aa%2 == 0) {
        vc.title = @"두 수의 합이 짝수";
        vc.imageState = @"y";
    }else {
        vc.title = @"두 수의 합이 홀수";
        vc.imageState = @"n";
    }

    vc.numberPressed = [arrayNumbers objectAtIndex:[self.pickerNumbers selectedRowInComponent:0]];
    vc.rNumber = [NSString stringWithFormat:@"%d",randNumber];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {      //picker의 열을 component라 하고 이것의 개수 반환
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView                        // 열에 있는 개수 반환
 numberOfRowsInComponent:(NSInteger)component {
    return [arrayNumbers count];
}

- (NSString *) pickerView:(UIPickerView *)pickerView                       // 그 열에서 선택된 값 반환
              titleForRow:(NSInteger)row  forComponent:(NSInteger)component {
        return [arrayNumbers objectAtIndex:row];
}


@end
