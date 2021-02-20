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

typedef NSInteger (^SumBlock) (NSInteger, NSInteger);

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Task 1");
    
    float v1 = 2.4;
    float v2 = 0.6;
    float answer = -1;
    
    int x1 = 11;
    int x2 = 3;
    int result = -1;
    
    answer = [Calculator calculateFloat:v1 execute:OperationAddition and:v2];
    NSLog(@"%2.2f + %2.2f = %2.2f", v1, v2, answer);
    
    answer = [Calculator calculateFloat:v1 execute:OperationSubtraction and:v2];
    NSLog(@"%2.2f - %2.2f = %2.2f", v1, v2, answer);
    
    answer = [Calculator calculateFloat:v1 execute:OperationMultiplication and:v2];
    NSLog(@"%2.2f * %2.2f = %2.2f", v1, v2, answer);
    
    answer = [Calculator calculateFloat:v1 execute:OperationDivision and:v2];
    NSLog(@"%2.2f / %2.2f = %2.2f", v1, v2, answer);
    
    result = [Calculator calculateInteger:x1 execute:OperationRemainder and:x2];
    NSLog(@"%d %% %d = %d", x1, x2, result);
    
    result = [Calculator calculateInteger:x1 execute:OperationExponentiation and:x2];
    NSLog(@"%d ^ %d = %d", x1, x2, result);
    
    NSLog(@"");
    
}


@end
