//
//  Model.h
//  testprotocol
//
//  Created by Hoang Duc on 21/12/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Model;
@protocol GetNumber <NSObject>

-(NSInteger)getNumber1: (Model *)model;
-(NSInteger)getnumber2: (Model *)model;

@end

@protocol CalculatorOperator <NSObject>

-(void)viewModel: (Model *)model result:(NSInteger)result;

@end

void (^getDataByBlock)(NSInteger, NSInteger);

@interface Model : NSObject

@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;
@property (nonatomic) NSInteger result;

-(void)getData;
-(void)funcAdd;

@property (retain, nonatomic) id<GetNumber> dataSource;
@property (retain, nonatomic) id<CalculatorOperator> delegate;

-(void)getDataByBlock:(NSInteger (^)(NSInteger a, NSInteger b))block;
-(void)addWithBlock:(void(^)(NSInteger a))callBack;

@end

NS_ASSUME_NONNULL_END
