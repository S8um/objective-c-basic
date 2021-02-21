//
//  ViewController.m
//  Lesson_06
//
//  Created by admin on 17.02.2021.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Operation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t serialQueue = dispatch_queue_create("serialQueue", NULL);
    dispatch_queue_t parallQueue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    
    CGFloat v1 = 2.4;
    CGFloat v2 = 0.6;
    __block CGFloat answer = -1;
    
    int x1 = 11;
    int x2 = 3;
    __block NSInteger result = -1;
    
    dispatch_async(globalQueue, ^{
        answer = [Calculator calculateFloat:v1 execute:OperationAddition and:v2];
        NSLog(@"1 - %2.2f + %2.2f = %2.2f", v1, v2, answer);

        answer = [Calculator calculateFloat:v1 execute:OperationSubtraction and:v2];
        NSLog(@"2 - %2.2f - %2.2f = %2.2f", v1, v2, answer);
    });

    dispatch_async(mainQueue, ^{
        answer = [Calculator calculateFloat:v1 execute:OperationMultiplication and:v2];
        NSLog(@"3 - %2.2f * %2.2f = %2.2f", v1, v2, answer);

        answer = [Calculator calculateFloat:v1 execute:OperationDivision and:v2];
        NSLog(@"4 - %2.2f / %2.2f = %2.2f", v1, v2, answer);
    });

    dispatch_async(parallQueue, ^{
        result = [Calculator calculateInteger:x1 execute:OperationRemainder and:x2];
        NSLog(@"5 - %d %% %d = %ld", x1, x2, (long)result);

        result = [Calculator calculateInteger:x1 execute:OperationExponentiation and:x2];
        NSLog(@"6 - %d ^ %d = %ld", x1, x2, (long)result);
    });

    dispatch_async(serialQueue, ^{
        NSLog(@"%@", @"End calculate");
    });
    
    NSOperationQueue *main_queue = [NSOperationQueue mainQueue];
    Operation *operation = [[Operation alloc] init];
    [main_queue addOperation:operation];
    
//    [main_queue addOperationWithBlock:^{
//        NSLog(@"Print using NSOperationQueue");
//    }];
}


@end
