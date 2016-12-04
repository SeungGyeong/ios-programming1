//
//  ViewController.h
//  Exam2
//
// 2013111647 멀티미디어학과 정승경
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *arrayNumbers;
}

@property (strong, nonatomic) IBOutlet UIPickerView *pickerNumbers;

@end

