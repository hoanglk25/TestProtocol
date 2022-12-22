//
//  Model.m
//  testprotocol
//
//  Created by Hoang Duc on 21/12/2022.
//

#import "Model.h"

@implementation Model
@synthesize number1, number2, result;

- (void)getData {
    if (self.dataSource && [self.dataSource respondsToSelector:@selector(getNumber1:)] && [self.dataSource respondsToSelector: @selector(getnumber2:)]) {
        number1 = [self.dataSource getNumber1:self ];
        number2 = [self.dataSource getnumber2:self];
    }
   
}

- (void)funcAdd {
    [self getData];
    result = number1 + number2;
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(viewModel:result:)]) {
        [self.delegate viewModel:self result:result];
    }
}
- (void)getDataByBlock:(NSInteger(^)(NSInteger a, NSInteger b))block {
    block(number1, number2);
}

- (void)addWithBlock:(id)completion :(void (^)(NSInteger))callBack {
    self->result = self->number1 + self->number2;
}


@end
