//
//  ViewController.m
//  Lesson_06
//
//  Created by admin on 17.02.2021.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    CGFloat v1 = 2.4;
    CGFloat v2 = 0.6;
    __block CGFloat answer = -1;
    
    int x1 = 11;
    int x2 = 3;
    __block NSInteger result = -1;
    
    dispatch_async(globalQueue, ^{
        answer = [Calculator calculateFloat:v1 execute:OperationAddition and:v2];
        NSLog(@"%2.2f + %2.2f = %2.2f", v1, v2, answer);
        
        answer = [Calculator calculateFloat:v1 execute:OperationSubtraction and:v2];
        NSLog(@"%2.2f - %2.2f = %2.2f", v1, v2, answer);
        
        answer = [Calculator calculateFloat:v1 execute:OperationMultiplication and:v2];
        NSLog(@"%2.2f * %2.2f = %2.2f", v1, v2, answer);
        
        answer = [Calculator calculateFloat:v1 execute:OperationDivision and:v2];
        NSLog(@"%2.2f / %2.2f = %2.2f", v1, v2, answer);
        
        result = [Calculator calculateInteger:x1 execute:OperationRemainder and:x2];
        NSLog(@"%d %% %d = %ld", x1, x2, (long)result);
        
        result = [Calculator calculateInteger:x1 execute:OperationExponentiation and:x2];
        NSLog(@"%d ^ %d = %ld", x1, x2, (long)result);
        
    });
}


@end
