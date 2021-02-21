//
//  Calculator.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef CGFloat (^CalcBlockFloat) (CGFloat var1, CGFloat var2);
typedef NSInteger (^CalcBlockInteger) (NSInteger var1, NSInteger var2);

typedef enum OperationFloat {
    OperationAddition,
    OperationSubtraction,
    OperationMultiplication,
    OperationDivision
} OperationFloat;

typedef enum OperationInteger {
    OperationRemainder,
    OperationExponentiation
} OperationInteger;

@interface Calculator : NSObject

+ (CGFloat) calculateFloat:(CGFloat) var1 execute: (OperationFloat) operation and: (CGFloat) var2;

+ (NSInteger) calculateInteger:(NSInteger) var1 execute: (OperationInteger) operation and: (NSInteger) var2;

@end

NS_ASSUME_NONNULL_END
