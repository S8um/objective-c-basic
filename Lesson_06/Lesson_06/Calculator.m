//
//  Calculator.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Calculator.h"

@implementation Calculator

CalcBlockFloat sum = ^(float var1, float var2) {
    return var1 + var2;
};

CalcBlockFloat substraction = ^(float var1, float var2) {
    return var1 - var2;
};

CalcBlockFloat multiplication = ^(float var1, float var2) {
    return var1 * var2;
};

CalcBlockFloat division = ^(float var1, float var2) {
    if (var2 == 0) {
        NSLog(@"Попытка деления на ноль");
        return -1.0f;
    }
    return var1 / var2;
};

CalcBlockInteger remainderOfTheDivision = ^(int var1, int var2) {
    return var1 % var2;
};

CalcBlockInteger exponentiation = ^(int var1, int var2) {
    int result = 1;
    for (int i = 0; i < var2; i++) {
        result *= var1;
    }
    return result;
};

+ (float) calculateFloat:(float) var1 execute: (OperationFloat) operation and: (float) var2 {
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

+ (int) calculateInteger:(int) var1 execute: (OperationInteger) operation and: (int) var2 {
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
