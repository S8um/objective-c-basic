//
//  Calculate.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Calculate.h"

@implementation Calculate

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create calculator");
    }
    return self;
}

- (float) calculate:(float) var1 execute: (Operation) operation and: (float) var2 {
    switch (operation) {
        case OperationAddition:
            return var1 + var2;
            break;
        case OperationSubtraction:
            return var1 - var2;
            break;
        case OperationMultiplication:
            return var1 * var2;
            break;
        case OperationDivision:
            if (var2 == 0) {
                NSLog(@"Попытка деления на ноль");
                return -1;
            }
            return var1 / var2;
            break;
        default:
            break;
    }
}

- (void)dealloc {
    NSLog(@"Dealloc calculator");
    [super dealloc];
}

@end
