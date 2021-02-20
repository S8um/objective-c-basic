//
//  Calculate.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculate : NSObject

enum Operation {
    OperationAddition = 1,
    OperationSubtraction = 2,
    OperationMultiplication = 3,
    OperationDivision = 4
};

typedef enum Operation Operation;

- (float) calculate:(float) var1 execute: (Operation) operation and: (float) var2;

@end

NS_ASSUME_NONNULL_END
