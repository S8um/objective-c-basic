//
//  Calculator.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef float (^CalcBlockFloat) (float var1, float var2);
typedef int (^CalcBlockInteger) (int var1, int var2);

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

+ (float) calculateFloat:(float) var1 execute: (OperationFloat) operation and: (float) var2;

+ (int) calculateInteger:(int) var1 execute: (OperationInteger) operation and: (int) var2;

@end

NS_ASSUME_NONNULL_END
