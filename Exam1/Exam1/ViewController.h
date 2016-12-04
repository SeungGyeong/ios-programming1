//
//  ViewController.h
//  Exam1
//
// 2013111647 멀티미디어학과 정승경
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int unitRegionPrice;
}

@property (strong, nonatomic) IBOutlet UISegmentedControl *departRegion;
@property (strong, nonatomic) IBOutlet UISegmentedControl *arrivalRegion;
@property (strong, nonatomic) IBOutlet UIStepper *stepperTicketCount;
@property (strong, nonatomic) IBOutlet UILabel *labelNumberOfTickets;
@property (strong, nonatomic) IBOutlet UILabel *labelCostOfTickets;
@property (strong, nonatomic) IBOutlet UILabel *labelTotalMoneyInserted;
@property (strong, nonatomic) IBOutlet UILabel *labelStatus;

- (IBAction)regionSelected:(UISegmentedControl *)sender;
- (IBAction)stepperChanged:(UIStepper *)sender;
- (IBAction)moneyInserted:(UIButton *)sender;
- (IBAction)buyTicket:(UIButton *)sender;

@end

