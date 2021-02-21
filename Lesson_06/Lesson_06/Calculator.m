//
//  Calculator.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Calculator.h"

@implementation Calculator

CalcBlockFloat sum = ^(CGFloat var1, CGFloat var2) {
    return (CGFloat) (var1 + var2);
};

CalcBlockFloat substraction = ^(CGFloat var1, CGFloat var2) {
    return var1 - var2;
};

CalcBlockFloat multiplication = ^(CGFloat var1, CGFloat var2) {
    return var1 * var2;
};

CalcBlockFloat division = ^(CGFloat var1, CGFloat var2) {
    if (var2 == 0) {
        NSLog(@"Попытка деления на ноль");
        return -1.0;
    }
    return var1 / var2;
};

CalcBlockInteger remainderOfTheDivision = ^NSInteger(NSInteger var1, NSInteger var2) {
    if (var2 == 0) {
        NSLog(@"Попытка деления на ноль");
        return -1;
    }
    return var1 % var2;
};

CalcBlockInteger exponentiation = ^(NSInteger var1, NSInteger var2) {
    NSInteger result = 1;
    for (NSInteger i = 0; i < var2; i++) {
        result *= var1;
    }
    return result;
};

+ (CGFloat) calculateFloat:(CGFloat) var1 execute: (OperationFloat) operation and: (CGFloat) var2 {
    switch (operation) {
        case OperationAddition:
            return sum(var1, var2);
            break;
        case OperationSubtraction:
            return substraction(var1, var2);
            break;
        case OperationMultiplication:
            return multiplication(var1, var2);
            break;
        case OperationDivision:
            return division(var1, var2);
            break;
        default:
            break;
    }
}

+ (NSInteger) calculateInteger:(NSInteger) var1 execute: (OperationInteger) operation and: (NSInteger) var2 {
    switch (operation) {
        case OperationRemainder:
            return remainderOfTheDivision(var1, var2);
            break;
        case OperationExponentiation:
            return exponentiation(var1, var2);
            break;
        default:
            break;
    }
}

@end
