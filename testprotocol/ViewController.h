//
//  ViewController.h
//  testprotocol
//
//  Created by Hoang Duc on 21/12/2022.
//

#import <UIKit/UIKit.h>
#import "Model.h"


@interface ViewController : UIViewController<GetNumber, CalculatorOperator>

@property (weak, nonatomic) IBOutlet UITextField *number1Txt;
@property (weak, nonatomic) IBOutlet UITextField *number2Txt;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonAdd;
- (IBAction)add:(id)sender;

@end

