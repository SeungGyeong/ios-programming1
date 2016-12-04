//
//  GoViewController.h
//  Exam2
//
//  Created by SWUComputer on 2016. 10. 27..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoViewController : UIViewController{
    UIImage *candleOffImage;
    UIImage *candleOnImage;
}

@property (strong, nonatomic) IBOutlet UILabel *labelTransfered;
@property (strong, nonatomic) IBOutlet UILabel *labelRandomlyGenerated;
@property (strong, nonatomic) IBOutlet UIImageView *ImageCandle;

@property (strong, nonatomic) NSString *numberPressed;
@property (strong, nonatomic) NSString *rNumber;
@property (strong, nonatomic) NSString *imageState;
@end
