//
//  ViewController.m
//  testprotocol
//
//  Created by Hoang Duc on 21/12/2022.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) Model *viewModel;

@end

@implementation ViewController

@synthesize number1Txt, number2Txt, resultLabel, buttonAdd;

- (void)viewDidLoad {
    [super viewDidLoad];
    _viewModel = [[Model alloc] init];
    _viewModel.dataSource = self;
    _viewModel.delegate = self;
    
//    [self.viewModel getDataByBlock:^NSInteger(NSInteger a, NSInteger b) {
//             NSInteger number = 0;
//        if (number == [self->number1Txt.text intValue]) {
//            return  number;
//        };
//        if (number == [self->number2Txt.text intValue]){
//            return  number;
//        }
//        return  number;
//    }];

}

- (NSInteger)getNumber1:(Model *)model {
    int number1 = [number1Txt.text intValue];
    return  number1;
}

- (NSInteger)getnumber2:(Model *)model {
    int number2 = [number2Txt.text intValue];
    return number2;
}

- (void)viewModel:(Model *)model result:(NSInteger)result {
    resultLabel.text = [NSString stringWithFormat:@"%ld", (long)result];
}


- (IBAction)add:(id)sender {
    [_viewModel funcAdd];
}
@end
